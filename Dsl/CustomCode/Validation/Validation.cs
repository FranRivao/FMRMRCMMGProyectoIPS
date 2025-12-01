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

            // Validar longitud máxima
            if (!string.IsNullOrWhiteSpace(nombre) && nombre.Length > 30)
            {
                context.LogError(
                    $"El nombre '{nombre}' no puede superar los 30 caracteres.",
                    "ERR_LONGITUD_NOMBRE"
                );
            }

            // Validar que no contenga números
            if (!string.IsNullOrWhiteSpace(nombre) && Regex.IsMatch(nombre, @"\d"))
            {
                context.LogError(
                    $"El nombre '{nombre}' no puede contener números.",
                    "ERR_NUMEROS_EN_NOMBRE"
                );
            }
        }
    }

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
}
