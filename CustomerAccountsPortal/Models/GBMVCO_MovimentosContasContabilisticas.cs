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
    
    public partial class GBMVCO_MovimentosContasContabilisticas
    {
        public int MRNDOC_BalcaoCcb { get; set; }
        public int MRBALC_BalcaoCcb { get; set; }
        public string MRCCB_ContaContabilistica { get; set; }
        public Nullable<int> MRBAL_Balcao { get; set; }
        public Nullable<int> MRNCLI_NumeroCliente { get; set; }
        public Nullable<int> MRNATR_Natureza { get; set; }
        public Nullable<int> MRNSEQ_NumeroSequencial { get; set; }
        public int MRTDOC_TipoDocumento { get; set; }
        public int MRCOPE_CodigoOperacao { get; set; }
        public decimal MRVLR_ValorMovimento { get; set; }
        public Nullable<decimal> MRSALD_SaldoAposMovimento { get; set; }
        public string MRUSER_LancadoPor { get; set; }
        public Nullable<int> MRHORA_HoraLancamento { get; set; }
        public int MRDATL_DataLancamento { get; set; }
        public string MRDRCX_DiarioOuCaixa { get; set; }
        public string MRETRB_EstacaoLancamento { get; set; }
        public int MRBALM_BalcaoMovimento { get; set; }
        public string MROBS_Observacoes { get; set; }
        public int MRNOPR_NrOperacao { get; set; }
        public Nullable<int> MRNCX_NumeroCaixa { get; set; }
        public Nullable<int> MRNTCX_NrTransaccaoCaixa { get; set; }
        public int MRNORD_NrOrdemTransaccao { get; set; }
        public string MRMINV_MovimentoInvisivel { get; set; }
        public int MRDTCB_DataContabilistica { get; set; }
        public string MREXCT_ExecutorMovimento { get; set; }
        public string MRMOED_Moeda { get; set; }
        public string MRDMOV_DescritivoMovimento { get; set; }
        public Nullable<decimal> MRTXA_TaxaAplicadaValorInc { get; set; }
        public Nullable<decimal> MRVLRI_ValorIncidencia { get; set; }
        public Nullable<long> MRAUTR_Autorizacao { get; set; }
        public Nullable<int> MRNTIT_NrEntidadeParaNota { get; set; }
        public string MRMVCC_MovContabilizado { get; set; }
        public Nullable<int> MRNCCR_NrclienteCntaRelaciona { get; set; }
        public Nullable<int> MRNTCR_NatContaRelacionada { get; set; }
        public Nullable<int> MRNSCR_NrSeqContaRelacionada { get; set; }
        public Nullable<long> GBMRCONTA_NrConta { get; set; }
        public string MRGRPP_GrupoPrecario { get; set; }
    }
}
