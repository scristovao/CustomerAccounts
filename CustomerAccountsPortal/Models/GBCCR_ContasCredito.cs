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
    
    public partial class GBCCR_ContasCredito
    {
        public long ID_ContasCredito { get; set; }
        public int CRBAL_Balcao { get; set; }
        public int CRNCLI_NrCliente { get; set; }
        public int CRNATR_Natureza { get; set; }
        public int CRNSEQ_NrSequencial { get; set; }
        public int CRNPRO_NrProposta { get; set; }
        public string CRTCRE_TipoCredito { get; set; }
        public string CRLCRE_LinhaCredito { get; set; }
        public decimal CRVLR_ValorEmprestimo { get; set; }
        public int CRUTI_NrUtilizacoes { get; set; }
        public int CRAMR_NrAmortizOuRendas { get; set; }
        public decimal CRTXNO_TaxaNominal { get; set; }
        public string CRMATX_ModoAplicacaoTaxa { get; set; }
        public string CRPERJ_PeriodicidJurosOuRendas { get; set; }
        public int CRDPDJ_ProxDebitoJurosOuRendas { get; set; }
        public int CRDDJR_InicioPerJurosOuRendas { get; set; }
        public string CRTGAR_TipoGarantia { get; set; }
        public int CRDTAB_DataAbertura { get; set; }
        public string CREPRZ_CdgEstatisticoPrazo { get; set; }
        public string CRSITU_Situacao { get; set; }
        public int CRDSIT_DataSituacao { get; set; }
        public Nullable<decimal> CRSLD_Saldo { get; set; }
        public Nullable<decimal> CRSLDC_SaldoCapital { get; set; }
        public Nullable<decimal> CRSLDJ_SaldoJuros { get; set; }
        public Nullable<decimal> CRSLDI_SaldoCapitalSituIrreg { get; set; }
        public string CRTJUR_TipoJuros { get; set; }
        public string CRREFR_ReferenciaInterna { get; set; }
        public string CRREFC_ReferenciaCliente { get; set; }
        public string CROBS_Observacoes { get; set; }
        public string CRSLAL_SaldoAlterado { get; set; }
        public int CRDVNC_DataVencimento { get; set; }
        public string CRTXNG_ComTaxaNegociada { get; set; }
        public Nullable<int> CRPERV_PeriodoJuroOuRendaVigor { get; set; }
        public string CRSITP_SituacaoProtegida { get; set; }
        public string CRDAAM_RegularizAutomaticas { get; set; }
        public string CRMOED_Moeda { get; set; }
        public string CRTRND_TipoRenda { get; set; }
        public Nullable<decimal> CRTFPR_FactorProgressaoRnd { get; set; }
        public Nullable<decimal> CRVFPR_VlrFactorProgRenda { get; set; }
        public string CRORDP_OrdemProgressao { get; set; }
        public string CRTPRG_TipoProgressao { get; set; }
        public string CRCPRU_PeriodicidadeUtiliz { get; set; }
        public string CRCPRA_PeriodicidadeAmortiz { get; set; }
        public int CRNCLD_NrCliRelacParaDebitos { get; set; }
        public int CRNATD_NatrRelacParaDebitos { get; set; }
        public int CRNSED_NrSeqRelacParaDebitos { get; set; }
        public int CRNCLC_NrCliRelacParaCreditos { get; set; }
        public int CRNATC_NatrRelacParaCreditos { get; set; }
        public int CRNSEC_NrSeqRelacParaCreditos { get; set; }
        public string CRSITJ_SituacaoJuros { get; set; }
        public int CRDTSJ_DataSituacaoJuros { get; set; }
        public string CRMSIT_MotivoSituacao { get; set; }
        public string CRISJR_ImpostoSeloJurosInclRenda { get; set; }
        public int CRBAJ_BaseAnualDiasParaJuros { get; set; }
        public string CRTTXR_TaxaReferencia { get; set; }
        public string CRPSPD_ParametroSpread { get; set; }
        public Nullable<decimal> CRSPD_Spread { get; set; }
        public string CRCPRD_CodigoProduto { get; set; }
        public string CRCCPR_CodigoComponente { get; set; }
        public string CRCLCP_ClasseComponente { get; set; }
        public string CRCCAS_CanalSubscricao { get; set; }
        public string CRUSRS_UtilizadorSubscricao { get; set; }
        public string CRCBNF_ContaComBonificacoes { get; set; }
        public string CRJRPC_JurosPeriodoCarencia { get; set; }
        public string CRPRTX_PeriodicidadeRevisaoTx { get; set; }
        public Nullable<int> CRDTRT_DtReferenciaRevisaoTx { get; set; }
        public Nullable<int> CRDTUT_DataUltimaRevisaoTaxa { get; set; }
        public Nullable<decimal> CRTXNN_TaxaNominalNegociada { get; set; }
        public string CRMATN_ModoAplicacaoTaxaNeg { get; set; }
        public string CRTXRN_TaxaReferenciaNeg { get; set; }
        public string CRPSPN_ParametroSpreadNeg { get; set; }
        public Nullable<decimal> CRSPDN_SpreadNegociado { get; set; }
        public Nullable<decimal> CRTAE_UltimaTaeCalculada { get; set; }
        public Nullable<decimal> CRTAEG_UltimaTaegCalculada { get; set; }
        public Nullable<int> CRDTTA_DataUltimaTae { get; set; }
    }
}
