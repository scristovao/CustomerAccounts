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
    
    public partial class CTMOV_MovimentosAM
    {
        public string MVNSEQ_NumeroSequencial { get; set; }
        public string MVPLN_Plano { get; set; }
        public string MVCNTA_Conta { get; set; }
        public Nullable<int> MVDTMV_DataMovimento { get; set; }
        public Nullable<int> MVAREA_Area { get; set; }
        public Nullable<int> MVDOCN_Documento { get; set; }
        public Nullable<int> MVDTDC_DataDocumento { get; set; }
        public string MVDBCR_DebitoCredito { get; set; }
        public Nullable<decimal> MVVLR_ValorDoMovimento { get; set; }
        public Nullable<int> MVCOPE_CodigoOperacao { get; set; }
        public string MVDEXT_NrDocExterno { get; set; }
        public string MVDDEX_Descritivo { get; set; }
        public string MVUSER_UtilizadorGravacao { get; set; }
        public Nullable<int> MVHORA_HoraGravacao { get; set; }
        public Nullable<int> MVDTGR_DataGravacao { get; set; }
        public string MVETRB_EstacaoGravacao { get; set; }
        public Nullable<decimal> MVACUD_AcumuladoDebito { get; set; }
        public Nullable<decimal> MVACUC_AcumuladoCredito { get; set; }
        public string MVRLMV_TipoMovimento { get; set; }
        public string MVPEST_Estorno { get; set; }
        public string MVTIVA_TipoDeIva { get; set; }
        public string MVTMIV_TipoMovIva { get; set; }
        public Nullable<int> MVNFC_NumeroContribuinte { get; set; }
        public Nullable<decimal> MVTXIR_TaxaIrs { get; set; }
        public string MVDFPR_ParmMovRefProv { get; set; }
        public Nullable<int> MVSEQO_SequenciaOrigem { get; set; }
        public string MVTPME_OrigemMovimento { get; set; }
        public string MVRFME_ReferenciaMovimento { get; set; }
        public string CTMVUSRDE_UtilizadorDesactivacao { get; set; }
        public Nullable<System.DateTime> CTMVDTDE_DataDeDesactivacao { get; set; }
        public Nullable<System.DateTime> CTMVHODE_HoraDeDesactivacao { get; set; }
    }
}
