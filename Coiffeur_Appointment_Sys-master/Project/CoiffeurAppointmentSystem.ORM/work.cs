//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace CoiffeurAppointmentSystem.ORM
{
    using System;
    using System.Collections.Generic;
    
    public partial class work
    {
        public int work_id { get; set; }
        public Nullable<int> staff_id { get; set; }
        public Nullable<int> service_id { get; set; }
        public Nullable<int> wp_id { get; set; }
        public int price { get; set; }
        public string description { get; set; }
        public Nullable<int> estimate_time { get; set; }
    
        public virtual person person { get; set; }
        public virtual service service { get; set; }
        public virtual workplace workplace { get; set; }
    }
}
