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
    
    public partial class GBMVDO_MovimentosContasDepositosOrdem
    {
        public int MVNDOC_NumeroDocumento { get; set; }
        public int MVBAL_Balcao { get; set; }
        public int MVNCLI_NumeroCliente { get; set; }
        public int MVNATR_Natureza { get; set; }
        public int MVNSEQ_NumeroSequencial { get; set; }
        public int MVTDOC_TipoDocumento { get; set; }
        public int MVCOPE_CodigoOperacao { get; set; }
        public decimal MVVLR_ValorQueAfectaConta { get; set; }
        public string MVMOED_MoedaQueAfectaConta { get; set; }
        public decimal MVVLRT_ValorTransaccao { get; set; }
        public string MVMOET_MoedaTransaccao { get; set; }
        public decimal MVSALD_SaldoAposMovimento { get; set; }
        public string MVUSER_LancadoPor { get; set; }
        public int MVHORA_HoraLancamento { get; set; }
        public int MVDATL_DataLancamento { get; set; }
        public int MVDATV_DataValor { get; set; }
        public string MVDRCX_DiarioOuCaixa { get; set; }
        public string MVETRB_EstacaoLancamento { get; set; }
        public string MVCCAS_Canal { get; set; }
        public Nullable<int> MVDTEE_DataEmissaoExtracto { get; set; }
        public int MVBALM_BalcaoMovimento { get; set; }
        public int MVBALC_BalcaoContaCcbMov { get; set; }
        public string MVCCB_ContaCcbMovimento { get; set; }
        public int MVNOPR_NrOperacao { get; set; }
        public Nullable<int> MVNCX_NumeroCaixa { get; set; }
        public Nullable<int> MVNTCX_NrTransaccaoCaixa { get; set; }
        public int MVNORD_NrOrdemTransaccao { get; set; }
        public string MVMINV_MovimentoInvisivel { get; set; }
        public int MVDTCB_DataContabilistica { get; set; }
        public string MVEXCT_ExecutorMovimento { get; set; }
        public string MVDMOV_DescritivoMovimento { get; set; }
        public Nullable<decimal> MVTXA_TaxaAplicadaValorInc { get; set; }
        public Nullable<decimal> MVVLRI_ValorIncidencia { get; set; }
        public Nullable<long> MVAUTR_Autorizacao { get; set; }
        public Nullable<decimal> MVTOTV_TotalValores { get; set; }
        public string MVCDEV_CodigoDevolucao { get; set; }
        public decimal MVVLRE_ValorParaExtracto { get; set; }
        public string MVOBS_Observacoes { get; set; }
    }
}
