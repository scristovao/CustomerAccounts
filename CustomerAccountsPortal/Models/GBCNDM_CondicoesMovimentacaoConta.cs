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
    
    public partial class GBCNDM_CondicoesMovimentacaoConta
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public GBCNDM_CondicoesMovimentacaoConta()
        {
            this.GBCLI_Clientes = new HashSet<GBCLI_Clientes>();
        }
    
        public int ATCNDM_CondMovimentacao { get; set; }
        public string ATDCND_Descritivo { get; set; }
    
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<GBCLI_Clientes> GBCLI_Clientes { get; set; }
    }
}
