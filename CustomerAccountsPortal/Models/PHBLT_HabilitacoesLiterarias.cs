//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace CustomerAccountsPortal.Models
{
    using System;
    using System.Collections.Generic;
    
    public partial class PHBLT_HabilitacoesLiterarias
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public PHBLT_HabilitacoesLiterarias()
        {
            this.GBTIT_Entidade = new HashSet<GBTIT_Entidade>();
        }
    
        public string PHBTP_HabilitacoesLiterarias { get; set; }
        public string HBDC_Descritivo { get; set; }
        public string SITU_Situacao { get; set; }
        public string USCR_UtilizadorCriacao { get; set; }
        public Nullable<System.DateTime> DTCR_DataCriacao { get; set; }
        public Nullable<System.DateTime> HOCR_HoraCriacao { get; set; }
    
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<GBTIT_Entidade> GBTIT_Entidade { get; set; }
    }
}
