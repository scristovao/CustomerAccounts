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
    
    public partial class GBLTIT_LigacaoClientesEntidades
    {
        public long ID_LigacaoClientesEntidades { get; set; }
        public Nullable<int> LTNCLI_NumeroCliente { get; set; }
        public Nullable<int> LTNTIT_NumeroEntidade { get; set; }
        public string LTRCLI_RelacaoCliente { get; set; }
        public string LTRCPE_RelacaoPrimeiraEntidade { get; set; }
    
        public virtual GBCLI_Clientes GBCLI_Clientes { get; set; }
        public virtual GBTIT_Entidade GBTIT_Entidade { get; set; }
    }
}
