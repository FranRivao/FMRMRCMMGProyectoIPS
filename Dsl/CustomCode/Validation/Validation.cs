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


            if (!string.IsNullOrWhiteSpace(nombre))
            {
                var duplicates = Store.ElementDirectory
                    .FindElements<Elemento>()
                    .Where(e => e.GetType() == GetType() // mismo tipo (Entidad, Atributo, etc.)
                                && e.nombre == nombre
                                && e.Id != Id);

                if (duplicates.Any())
                {
                    context.LogError(
                        $"El nombre '{nombre}' ya está en uso en otro elemento del mismo tipo.",
                        "ERR_NOMBRE_DUPLICADO"
                    );
                }
            }
        }
    }

}
