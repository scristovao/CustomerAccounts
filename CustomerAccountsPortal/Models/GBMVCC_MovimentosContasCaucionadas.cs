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
    
    public partial class GBMVCC_MovimentosContasCaucionadas
    {
        public int MUNDOC_NumeroDocumento { get; set; }
        public int MUBAL_Balcao { get; set; }
        public int MUNCLI_NumeroCliente { get; set; }
        public int MUNATR_Natureza { get; set; }
        public int MUNSEQ_NumeroSequencial { get; set; }
        public int MUTDOC_TipoDocumento { get; set; }
        public int MUCOPE_CodigoOperacao { get; set; }
        public decimal MUVLR_ValorMovimento { get; set; }
        public Nullable<decimal> MUSALD_SaldoAposMovimento { get; set; }
        public string MUUSER_LancadoPor { get; set; }
        public Nullable<int> MUHORA_HoraLancamento { get; set; }
        public int MUDATL_DataLancamento { get; set; }
        public int MUDATV_DataValor { get; set; }
        public string MUDRCX_DiarioOuCaixa { get; set; }
        public string MUETRB_EstacaoLancamento { get; set; }
        public Nullable<int> MUDTEE_DataEmissaoExtracto { get; set; }
        public int MUBALM_BalcaoMovimento { get; set; }
        public int MUBALC_BalcaoCntCcbMov { get; set; }
        public string MUCCB_ContaCcbMovimento { get; set; }
        public int MUNOPR_NrOperacao { get; set; }
        public Nullable<int> MUNCX_NumeroCaixa { get; set; }
        public Nullable<int> MUNTCX_NrTransaccaoCaixa { get; set; }
        public Nullable<int> MUNORD_NrOrdemTransaccao { get; set; }
        public string MUMINV_MovimentoInvisivel { get; set; }
        public Nullable<int> MUDTCB_DataContabilistica { get; set; }
        public string MUEXCT_ExecutorMovimento { get; set; }
        public string MUMOED_Moeda { get; set; }
        public string MUDMOV_DescritivoMovimento { get; set; }
        public Nullable<decimal> MUTXA_TaxaAplicadaValorInc { get; set; }
        public Nullable<decimal> MUVLRI_ValorIncidencia { get; set; }
        public Nullable<long> MUAUTR_Autorizacao { get; set; }
        public Nullable<decimal> MUTOTV_TotalValores { get; set; }
        public string MUCDEV_CodigoDevolucao { get; set; }
        public string MUOBS_Observacoes { get; set; }
    }
}
