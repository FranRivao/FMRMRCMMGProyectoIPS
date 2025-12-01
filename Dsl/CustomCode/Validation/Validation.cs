using Microsoft.VisualStudio.Modeling.Validation;
using System.Linq;
using System.Text.RegularExpressions;

namespace UPM_IPS.FMRMRCMMGProyectoIPS
{
    [ValidationState(ValidationState.Enabled)]
    public partial class Elemento
    {
        [ValidationMethod(ValidationCategories.Save | ValidationCategories.Open)]
        public void ValidateFormatoNombre(ValidationContext context)
        {
            if (string.IsNullOrWhiteSpace(nombre))
            {
                context.LogError(
                    "El nombre del elemento no puede estar vacío.",
                    "ERR_NOMBRE_VACIO"
                );
            }

            if (!string.IsNullOrWhiteSpace(nombre) && nombre.Length > 30)
            {
                context.LogError(
                    $"El nombre '{nombre}' no puede superar los 30 caracteres.",
                    "ERR_LONGITUD_NOMBRE"
                );
            }

            if (!string.IsNullOrWhiteSpace(nombre) && Regex.IsMatch(nombre, @"\d"))
            {
                context.LogError(
                    $"El nombre '{nombre}' no puede contener números.",
                    "ERR_NUMEROS_EN_NOMBRE"
                );
            }
        }
    }

    [ValidationState(ValidationState.Enabled)]
    public partial class Entidad 
    {
        [ValidationMethod(ValidationCategories.Save | ValidationCategories.Open)]
        public void ValidateAtributosUnicos(ValidationContext context)
        {
            var atributoNombres = this.Atributo.Select(a => a.nombre).ToList();
            var nombresDuplicados = atributoNombres
                .GroupBy(n => n)
                .Where(g => g.Count() > 1)
                .Select(g => g.Key)
                .ToList();
            foreach (var nombreDuplicado in nombresDuplicados)
            {
                context.LogError(
                    $"El atributo '{nombreDuplicado}' está duplicado en la entidad '{this.nombre}'.",
                    "ERR_ATRIBUTOS_DUPLICADOS"
                );
            }
        }

        [ValidationMethod(ValidationCategories.Save | ValidationCategories.Open)]
        public void ValidateNombreEntidadUnico(ValidationContext context)
        {
            if (string.IsNullOrWhiteSpace(this.nombre))
                return;

            var entidadesConMismoNombre = this.Store.ElementDirectory.AllElements
                .OfType<Entidad>()
                .Where(e => !object.ReferenceEquals(e, this) && e.nombre == this.nombre)
                .ToList();

            if (entidadesConMismoNombre.Any())
            {
                context.LogError(
                    $"El nombre de entidad '{this.nombre}' ya existe. Los nombres de entidad deben ser únicos.",
                    "ERR_ENTIDAD_NOMBRE_DUPLICADO"
                );
            }
        }
    }

    [ValidationState(ValidationState.Enabled)]
    public partial class Relacion
    {
        [ValidationMethod(ValidationCategories.Save | ValidationCategories.Open)]
        public void ValidateNombreRelacionUnico(ValidationContext context)
        {
            // Ignorar nombres vacíos; ya se valida en Elemento.ValidateFormatoNombre
            if (string.IsNullOrWhiteSpace(this.nombre))
                return;

            var relacionesConMismoNombre = this.Store.ElementDirectory.AllElements
                .OfType<Relacion>()
                .Where(r => !object.ReferenceEquals(r, this) && r.nombre == this.nombre)
                .ToList();

            if (relacionesConMismoNombre.Any())
            {
                context.LogError(
                    $"El nombre de relación '{this.nombre}' ya existe. Los nombres de relación deben ser únicos.",
                    "ERR_RELACION_NOMBRE_DUPLICADO"
                );
            }
        }

        [ValidationMethod(ValidationCategories.Save | ValidationCategories.Open)]
        public void ValidateAtributosUnicos(ValidationContext context)
        {
            var atributoNombres = this.AtributoRelacion.Select(a => a.nombre).ToList();
            var nombresDuplicados = atributoNombres
                .GroupBy(n => n)
                .Where(g => g.Count() > 1)
                .Select(g => g.Key)
                .ToList();
            foreach (var nombreDuplicado in nombresDuplicados)
            {
                context.LogError(
                    $"El atributo '{nombreDuplicado}' está duplicado en la relacion '{this.nombre}'.",
                    "ERR_ATRIBUTOS_DUPLICADOS"
                );
            }
        }
    }

    [ValidationState(ValidationState.Enabled)]
    public partial class AtributoGeneral
    {
        [ValidationMethod(ValidationCategories.Save | ValidationCategories.Open)]
        public void ValidateLongitudSegunTipoDato(ValidationContext context)
        {

            if (this.tipoDato != TipoDatoEnum.Alfanumerico)
            {
                if (this.longitud != 0)
                {
                    context.LogError(
                        $"Para el atributo '{this.nombre}': cuando 'tipoDato' es '{this.tipoDato}', la propiedad 'longitud' debe ser 0.",
                        "ERR_LONGITUD_DEBE_SER_CERO"
                    );
                }
                return;
            }

            if (this.tipoDato == TipoDatoEnum.Alfanumerico)
            {
                if (this.longitud <= 1 || this.longitud >= 256)
                {
                    context.LogError(
                        $"Para el atributo '{this.nombre}': cuando 'tipoDato' es Alfanumerico, 'longitud' debe estar entre 1 y 256 (valor actual: {this.longitud}).",
                        "ERR_LONGITUD_ALFANUMERICO"
                    );
                }
            }
        }
    }
    [ValidationState(ValidationState.Enabled)]
    public partial class AtributoKey
    {
        [ValidationMethod(ValidationCategories.Save | ValidationCategories.Open)]
        public void EnsureFlagsFalse(ValidationContext context)
        {
            bool changed = false;

            if (this.esNulo)
            {
                AtributoGeneral.esNuloPropertyHandler.Instance.SetValue(this, false);
                changed = true;
            }

            if (this.admiteRepetidos)
            {
                AtributoGeneral.admiteRepetidosPropertyHandler.Instance.SetValue(this, false);
                changed = true;
            }

            if (changed)
            {
                context.LogWarning(
                    $"Las propiedades 'esNulo' y/o 'admiteRepetidos' del AtributoKey '{this.nombre}' se han forzado a False.",
                    "INF_ATRIBUTOKEY_FLAGS_FORZADAS"
                );
            }
        }
    }
}
