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
    
    public partial class GBCDP_ContasDepositosPrazo
    {
        public long ID_ContasDepositosPrazo { get; set; }
        public Nullable<int> DPBAL_Balcao { get; set; }
        public Nullable<int> DPNCLI_NrCliente { get; set; }
        public Nullable<int> DPNATR_Natureza { get; set; }
        public Nullable<int> DPNSEQ_NrSequencial { get; set; }
        public string DPCCAP_CodigoCapitalizacao { get; set; }
        public Nullable<decimal> DPSLD_Saldo { get; set; }
        public Nullable<int> DPDTIN_DataInicio { get; set; }
        public Nullable<int> DPNDIA_NrDias { get; set; }
        public Nullable<int> DPDVNC_DataVencimento { get; set; }
        public Nullable<decimal> DPTXJ_TaxaJuro { get; set; }
        public Nullable<int> DPNREN_NrRenovacoes { get; set; }
        public string DPSLAL_SaldoAlterado { get; set; }
        public Nullable<int> DPDTAB_DataAbertura { get; set; }
        public string DPTXNG_ComTaxaNegociada { get; set; }
        public string DPSITU_SituacaoConta { get; set; }
        public Nullable<int> DPDSIT_DataSituacao { get; set; }
        public Nullable<int> DPIPRJ_InicioPeriodoJuros { get; set; }
        public string DPPERJ_PeriodicidadeJuros { get; set; }
        public Nullable<int> DPPCRJ_FimPeriodoJuros { get; set; }
        public Nullable<int> DPNPRO_NrPromissoria { get; set; }
        public string DPEPRO_PromissoriaEmitida { get; set; }
        public Nullable<int> DPNCLJ_NrClienteParaJuros { get; set; }
        public Nullable<int> DPNATJ_NaturezaParaJuros { get; set; }
        public Nullable<int> DPNSEJ_NrSequencialParaJuros { get; set; }
        public string DPEPRZ_CdgEstatisticoPrazo { get; set; }
        public string DPMOED_Moeda { get; set; }
        public string DPTFVC_TransfereNoVencimento { get; set; }
        public Nullable<decimal> DPCTDB_CativosADebito { get; set; }
        public Nullable<decimal> DPCTCR_CativosACredito { get; set; }
        public Nullable<decimal> DPCTPD_CativosPendentes { get; set; }
        public string DPTCJR_TipoCalculoJuros { get; set; }
        public string DPPINC_PeriodicidadeIncremento { get; set; }
        public string DPTINC_ValorParaIncremento { get; set; }
        public Nullable<int> DPDTIC_DataProximoIncremento { get; set; }
        public string DPMSIT_MotivoSituacao { get; set; }
        public Nullable<int> DPBAJ_BaseAnualDiasParaJuros { get; set; }
        public string DPTTXR_TaxaReferencia { get; set; }
        public string DPPSPD_ParametroSpread { get; set; }
        public Nullable<decimal> DPSPD_Spread { get; set; }
        public string DPCPRD_CodigoProduto { get; set; }
        public string DPCCPR_CodigoComponente { get; set; }
        public string DPCLCP_ClasseComponente { get; set; }
        public string DPCCAS_CanalSubscricao { get; set; }
        public string DPUSRS_UtilizadorSubscricao { get; set; }
        public string DPPRTX_PeriodicidadeRevisaoTx { get; set; }
        public Nullable<int> DPDTRT_DtReferenciaRevisaoTx { get; set; }
        public Nullable<int> DPDTUT_DataUltimaRevisaoTaxa { get; set; }
        public Nullable<decimal> DPTXJN_TaxaJurosNegociada { get; set; }
        public string DPTXRN_TaxaReferenciaNeg { get; set; }
        public string DPPSPN_ParametroSpreadNeg { get; set; }
        public Nullable<decimal> DPSPDN_SpreadNegociado { get; set; }
        public Nullable<decimal> DPTAE_UltimaTaeCalculada { get; set; }
        public Nullable<int> DPDTTA_DataUltimaTAE { get; set; }
    }
}
