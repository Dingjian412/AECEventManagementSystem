//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace AECEM.Entity
{
    using System;
    using System.Collections.Generic;
    
    public partial class PitStop
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public PitStop()
        {
            this.EventPits = new HashSet<EventPit>();
        }
    
        public int PitStopID { get; set; }
        public string PitName { get; set; }
        public string Address { get; set; }
        public string Postcode { get; set; }
        public System.Data.Entity.Spatial.DbGeography Longitude { get; set; }
        public System.Data.Entity.Spatial.DbGeography Latitude { get; set; }
        public System.DateTime CreatedTime { get; set; }
        public string CreatedBy { get; set; }
        public Nullable<System.DateTime> UpdatedTime { get; set; }
        public string UpdatedBy { get; set; }
    
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<EventPit> EventPits { get; set; }
    }
}
