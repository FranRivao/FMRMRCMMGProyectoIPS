using Microsoft.VisualStudio.Modeling.Validation;
using System.Linq;
using System.Text.RegularExpressions;

namespace UPM_IPS.FMRMRCMMGProyectoIPS
{
    [ValidationState(ValidationState.Enabled)]
    public class ElementoValidation
    {
        [ValidationMethod(ValidationCategories.Save | ValidationCategories.Open)]
        public void ValidateFormatoNombre(Elemento elemento, ValidationContext context)
        {
            if (string.IsNullOrWhiteSpace(elemento.nombre))
            {
                context.LogError(
                    "El nombre del elemento no puede estar vacío.",
                    "ERR_NOMBRE_VACIO",
                    elemento
                );
            }

            // Validar longitud máxima
            if (!string.IsNullOrWhiteSpace(elemento.nombre) && elemento.nombre.Length > 30)
            {
                context.LogError(
                    $"El nombre '{elemento.nombre}' no puede superar los 30 caracteres.",
                    "ERR_LONGITUD_NOMBRE",
                    elemento
                );
            }

            // Validar que no contenga números
            if (!string.IsNullOrWhiteSpace(elemento.nombre) && Regex.IsMatch(elemento.nombre, @"\d"))
            {
                context.LogError(
                    $"El nombre '{elemento.nombre}' no puede contener números.",
                    "ERR_NUMEROS_EN_NOMBRE",
                    elemento
                );
            }


            if (!string.IsNullOrWhiteSpace(elemento.nombre))
            {
                var duplicates = elemento.Store.ElementDirectory
                    .FindElements<Elemento>()
                    .Where(e => e.GetType() == elemento.GetType() // mismo tipo (Entidad, Atributo, etc.)
                                && e.nombre == elemento.nombre
                                && e.Id != elemento.Id);

                if (duplicates.Any())
                {
                    context.LogError(
                        $"El nombre '{elemento.nombre}' ya está en uso en otro elemento del mismo tipo.",
                        "ERR_NOMBRE_DUPLICADO",
                        elemento
                    );
                }
            }
        }
    }

}
