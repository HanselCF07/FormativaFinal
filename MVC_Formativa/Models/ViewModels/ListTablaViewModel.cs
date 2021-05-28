using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace MVC_Formativa.Models.ViewModels
{
    public class ListTablaViewModel
    {
        public int Id { get; set; }
        public String Nombre { get; set; }
        public String Correo { get; set; }
        public DateTime Fecha_Nacimiento { get; set; }

    }
}