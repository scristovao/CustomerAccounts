
-- --------------------------------------------------
-- Entity Designer DDL Script for SQL Server 2005, 2008, 2012 and Azure
-- --------------------------------------------------
-- Date Created: 12/06/2018 19:00:26
-- Generated from EDMX file: C:\Users\sonia.cristovao\source\repos\CustomerAccountsPortal\CustomerAccountsPortal\Models\CustomerAccountsModel.edmx
-- --------------------------------------------------

SET QUOTED_IDENTIFIER OFF;
GO
USE [CustomerAccounts];
GO
IF SCHEMA_ID(N'dbo') IS NULL EXECUTE(N'CREATE SCHEMA [dbo]');
GO

-- --------------------------------------------------
-- Dropping existing FOREIGN KEY constraints
-- --------------------------------------------------

IF OBJECT_ID(N'[dbo].[FK_GBTIT_Entidade_PHBLT_HabilitacoesLiterarias]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[GBTIT_Entidade] DROP CONSTRAINT [FK_GBTIT_Entidade_PHBLT_HabilitacoesLiterarias];
GO

-- --------------------------------------------------
-- Dropping existing tables
-- --------------------------------------------------

IF OBJECT_ID(N'[dbo].[GBCCC_ContasCaucionadas]', 'U') IS NOT NULL
    DROP TABLE [dbo].[GBCCC_ContasCaucionadas];
GO
IF OBJECT_ID(N'[dbo].[GBCCO_ContasContabilisticas]', 'U') IS NOT NULL
    DROP TABLE [dbo].[GBCCO_ContasContabilisticas];
GO
IF OBJECT_ID(N'[dbo].[GBCCR_ContasCredito]', 'U') IS NOT NULL
    DROP TABLE [dbo].[GBCCR_ContasCredito];
GO
IF OBJECT_ID(N'[dbo].[GBCDO_ContasDepositosOrdem]', 'U') IS NOT NULL
    DROP TABLE [dbo].[GBCDO_ContasDepositosOrdem];
GO
IF OBJECT_ID(N'[dbo].[GBCDP_ContasDepositosPrazo]', 'U') IS NOT NULL
    DROP TABLE [dbo].[GBCDP_ContasDepositosPrazo];
GO
IF OBJECT_ID(N'[dbo].[GBCLI_Clientes]', 'U') IS NOT NULL
    DROP TABLE [dbo].[GBCLI_Clientes];
GO
IF OBJECT_ID(N'[dbo].[GBCNDM_CondicoesMovimentacaoConta]', 'U') IS NOT NULL
    DROP TABLE [dbo].[GBCNDM_CondicoesMovimentacaoConta];
GO
IF OBJECT_ID(N'[dbo].[GBCODOP_CodigosOperacao]', 'U') IS NOT NULL
    DROP TABLE [dbo].[GBCODOP_CodigosOperacao];
GO
IF OBJECT_ID(N'[dbo].[GBCRES_CodigosResidencia]', 'U') IS NOT NULL
    DROP TABLE [dbo].[GBCRES_CodigosResidencia];
GO
IF OBJECT_ID(N'[dbo].[GBCSTE_CodigosSectoriaisNaoResidentes]', 'U') IS NOT NULL
    DROP TABLE [dbo].[GBCSTE_CodigosSectoriaisNaoResidentes];
GO
IF OBJECT_ID(N'[dbo].[GBCSTR_CodigosSectoriaisResidentes]', 'U') IS NOT NULL
    DROP TABLE [dbo].[GBCSTR_CodigosSectoriaisResidentes];
GO
IF OBJECT_ID(N'[dbo].[GBDOC_Documentos]', 'U') IS NOT NULL
    DROP TABLE [dbo].[GBDOC_Documentos];
GO
IF OBJECT_ID(N'[dbo].[GBLTIT_LigacaoClientesEntidades]', 'U') IS NOT NULL
    DROP TABLE [dbo].[GBLTIT_LigacaoClientesEntidades];
GO
IF OBJECT_ID(N'[dbo].[GBMORD_Moradas]', 'U') IS NOT NULL
    DROP TABLE [dbo].[GBMORD_Moradas];
GO
IF OBJECT_ID(N'[dbo].[GBMVCC_MovimentosContasCaucionadas]', 'U') IS NOT NULL
    DROP TABLE [dbo].[GBMVCC_MovimentosContasCaucionadas];
GO
IF OBJECT_ID(N'[dbo].[GBMVCO_MovimentosContasContabilisticas]', 'U') IS NOT NULL
    DROP TABLE [dbo].[GBMVCO_MovimentosContasContabilisticas];
GO
IF OBJECT_ID(N'[dbo].[GBMVCR_MovimentosContasCredito]', 'U') IS NOT NULL
    DROP TABLE [dbo].[GBMVCR_MovimentosContasCredito];
GO
IF OBJECT_ID(N'[dbo].[GBMVDO_MovimentosContasDepositosOrdem]', 'U') IS NOT NULL
    DROP TABLE [dbo].[GBMVDO_MovimentosContasDepositosOrdem];
GO
IF OBJECT_ID(N'[dbo].[GBMVDP_MovimentosContasDepositosPrazo]', 'U') IS NOT NULL
    DROP TABLE [dbo].[GBMVDP_MovimentosContasDepositosPrazo];
GO
IF OBJECT_ID(N'[dbo].[GBNATR_NaturezasContas]', 'U') IS NOT NULL
    DROP TABLE [dbo].[GBNATR_NaturezasContas];
GO
IF OBJECT_ID(N'[dbo].[GBOPR_Operacoes]', 'U') IS NOT NULL
    DROP TABLE [dbo].[GBOPR_Operacoes];
GO
IF OBJECT_ID(N'[dbo].[GBTCLI_SegmentoCliente]', 'U') IS NOT NULL
    DROP TABLE [dbo].[GBTCLI_SegmentoCliente];
GO
IF OBJECT_ID(N'[dbo].[GBTIT_Entidade]', 'U') IS NOT NULL
    DROP TABLE [dbo].[GBTIT_Entidade];
GO
IF OBJECT_ID(N'[dbo].[GBTPENT_TiposEntidades]', 'U') IS NOT NULL
    DROP TABLE [dbo].[GBTPENT_TiposEntidades];
GO
IF OBJECT_ID(N'[dbo].[GBTRCLI_TiposRelacoesEntidadesClientes]', 'U') IS NOT NULL
    DROP TABLE [dbo].[GBTRCLI_TiposRelacoesEntidadesClientes];
GO
IF OBJECT_ID(N'[dbo].[PACTP_ActividadeProfissional]', 'U') IS NOT NULL
    DROP TABLE [dbo].[PACTP_ActividadeProfissional];
GO
IF OBJECT_ID(N'[dbo].[PESTC_EstadoCivil]', 'U') IS NOT NULL
    DROP TABLE [dbo].[PESTC_EstadoCivil];
GO
IF OBJECT_ID(N'[dbo].[PHBLT_HabilitacoesLiterarias]', 'U') IS NOT NULL
    DROP TABLE [dbo].[PHBLT_HabilitacoesLiterarias];
GO
IF OBJECT_ID(N'[dbo].[PPAIS_Paises]', 'U') IS NOT NULL
    DROP TABLE [dbo].[PPAIS_Paises];
GO
IF OBJECT_ID(N'[dbo].[PPROF_Profissoes]', 'U') IS NOT NULL
    DROP TABLE [dbo].[PPROF_Profissoes];
GO
IF OBJECT_ID(N'[dbo].[PREGC_RegimesCasamento]', 'U') IS NOT NULL
    DROP TABLE [dbo].[PREGC_RegimesCasamento];
GO
IF OBJECT_ID(N'[dbo].[PTIDD_TiposIdentificacao]', 'U') IS NOT NULL
    DROP TABLE [dbo].[PTIDD_TiposIdentificacao];
GO

-- --------------------------------------------------
-- Creating all tables
-- --------------------------------------------------

-- Creating table 'GBCCC_ContasCaucionadas'
CREATE TABLE [dbo].[GBCCC_ContasCaucionadas] (
    [CCNSEQ_Balcao] int  NOT NULL,
    [CCBAL_Balcao] int  NOT NULL,
    [CCNCLI_NrCliente] int  NOT NULL,
    [CCNATR_Natureza] int  NOT NULL,
    [CCSLD_Saldo] decimal(9,2)  NULL,
    [CCSLDV_SaldoPorDataValor] decimal(9,2)  NULL,
    [CCNDDESC_DiasDescobertoSaldo] int  NULL,
    [CCSALM_SaldoMedioPorSaldo] decimal(11,2)  NULL,
    [CCSALV_SaldoMedioParaDataValor] decimal(11,2)  NULL,
    [CCSALD_SaldoMedioDisponivel] decimal(11,2)  NULL,
    [CCNDSM_NrDiasSaldoMedio] int  NULL,
    [CCLIMD_LimiteDescoberto] decimal(8,2)  NULL,
    [CCDLIM_DataExpirLimiteDesc] int  NULL,
    [CCVLR_ValorCredito] decimal(8,2)  NULL,
    [CCNUMV_NumerosVermelhos] decimal(11,2)  NULL,
    [CCNUCI_ComissaoImobilizacao] decimal(8,2)  NULL,
    [CCRUMV_RecalculoNrsVermelhos] decimal(11,2)  NULL,
    [CCRUCI_RecalculoComissaoImob] decimal(8,2)  NULL,
    [CCPERJ_PeriodicidadeJuros] varchar(1)  NOT NULL,
    [CCPERRENOV_PeriodicidadeRenovacao] varchar(1)  NULL,
    [CCRENOVAAU_RenovacaoAutomatica] varchar(1)  NOT NULL,
    [CCTCRE_TipoCredito] varchar(2)  NOT NULL,
    [CCTGAR_TipoGarantia] varchar(6)  NOT NULL,
    [CCLCRE_LinhaCredito] varchar(6)  NULL,
    [CCTXC_TaxaConta] decimal(5,5)  NOT NULL,
    [CCTXDS_TaxaDescoberto] decimal(5,5)  NULL,
    [CCTXIM_TaxaImobilizacao] decimal(5,5)  NULL,
    [CCDTAB_DataAbertura] int  NOT NULL,
    [CCDATAIPER_DataInicioPeriodo] int  NOT NULL,
    [CCDVNC_DataVencimento] int  NOT NULL,
    [CCDUMV_DataUltimoMovimento] int  NULL,
    [CCDDJR_DataUltimoDebitoJuros] int  NOT NULL,
    [CCDPDJ_ProximoDebitoJuros] int  NOT NULL,
    [CCTEXT_TipoExtracto] varchar(1)  NULL,
    [CCPERE_PeriodicidadeExtracto] varchar(1)  NULL,
    [CCMVNE_MovNaoSaidosExtracto] int  NULL,
    [CCUEXT_NrExtractoLinhaCader] int  NULL,
    [CCDEXT_DataUltimoExtracto] int  NULL,
    [CCSITU_SituacaoConta] varchar(1)  NOT NULL,
    [CCEPRZ_CdgEstatisticoPrazo] varchar(2)  NOT NULL,
    [CCDSIT_DataSituacao] int  NULL,
    [CCVLRD_ValorMinimoParaDebito] decimal(8,2)  NULL,
    [CCVLRC_ValorMinimoParaCredito] decimal(8,2)  NULL,
    [CCTRCD_TrancheDebito] decimal(8,2)  NULL,
    [CCTRCC_TrancheCredito] decimal(8,2)  NULL,
    [CCSLAL_SaldoAlterado] varchar(1)  NOT NULL,
    [CCTXNG_ComTaxaNegociada] varchar(1)  NOT NULL,
    [CCSITP_SituacaoProtegida] varchar(1)  NOT NULL,
    [CCECJ_ComEscalaJuros] varchar(1)  NOT NULL,
    [CCMOED_Moeda] varchar(3)  NOT NULL,
    [CCNJDM_NrsJurosDevMes] decimal(11,2)  NULL,
    [CCNCLD_NrCliRelacParaDebitos] int  NOT NULL,
    [CCNATD_NaturRelacParaDebitos] int  NOT NULL,
    [CCNSED_NrSeqRelacParaDebitos] int  NOT NULL,
    [CCCTDB_CativosADebito] decimal(8,2)  NULL,
    [CCCTCR_CativosACredito] decimal(8,2)  NULL,
    [CCCTPD_CativosPendentes] decimal(8,2)  NULL,
    [CCMSIT_MotivoSituacao] varchar(40)  NULL,
    [CCBAJ_BaseAnualDiasParajuros] int  NOT NULL,
    [CCTTXR_TaxaRefParaTaxaConta] varchar(10)  NULL,
    [CCTXRD_TaxaRefParaTaxaDesc] varchar(10)  NULL,
    [CCPSPC_ParmSpreadTaxaConta] varchar(2)  NULL,
    [CCPSPD_ParmSpreadTaxaDescob] varchar(2)  NULL,
    [CCSPDC_SpreadTaxaConta] decimal(5,5)  NULL,
    [CCSPDD_SpreadTaxaDescoberto] decimal(5,5)  NULL,
    [CCNCJR_CalculaJuros] varchar(1)  NOT NULL,
    [CCCPRD_CodigoProduto] varchar(10)  NOT NULL,
    [CCCCPR_CodigoComponente] varchar(10)  NOT NULL,
    [CCCLCP_ClasseComponente] varchar(5)  NOT NULL,
    [CCCCAS_CanalSubscricao] varchar(10)  NULL,
    [CCUSRS_UtilizadorSubscricao] varchar(10)  NULL,
    [CCPRTX_PeriodicidadeRevisaoTx] varchar(1)  NULL,
    [CCDTRT_DtReferenciaRevisaoTx] int  NULL,
    [CCDTUT_DataUltimaRevisaoTaxa] int  NOT NULL,
    [CCTXCN_TaxaContaNegociada] decimal(5,5)  NULL,
    [CCTXDN_TaxaDescobertoNeg] decimal(5,5)  NULL,
    [CCTXIN_TaxaImobilizacaoNeg] decimal(5,5)  NULL,
    [CCTXRN_TaxaRefTxContaNeg] varchar(10)  NULL,
    [CCTRDN_TaxaRefTxDescNeg] varchar(10)  NULL,
    [CCPSCN_ParmSpreadTxContaNeg] varchar(2)  NULL,
    [CCPSDN_ParmSpreadTxDescNeg] varchar(2)  NULL,
    [CCSPCN_SpreadTaxaContaNeg] decimal(5,5)  NULL,
    [CCSPDN_SpreadTaxaDescNeg] decimal(5,5)  NULL,
    [CCMAPI_ModoAplicIndexante] varchar(1)  NULL,
    [CCMAIN_ModoAplicIndexNeg] varchar(1)  NULL
);
GO

-- Creating table 'GBCCO_ContasContabilisticas'
CREATE TABLE [dbo].[GBCCO_ContasContabilisticas] (
    [CSNSEQ_BalcaoContaContab] int  NOT NULL,
    [CSBALC_BalcaoContaContab] int  NOT NULL,
    [CSCCB_ContaContabilistica] varchar(13)  NOT NULL,
    [CSBAL_Balcao] int  NULL,
    [CSNCLI_NrCliente] int  NULL,
    [CSNATR_Natureza] int  NULL,
    [CSSLD_Saldo] decimal(9,2)  NULL,
    [CSMCX_CaixasMovimentam] varchar(1)  NOT NULL,
    [CSMTRF_TransferencMovimentam] varchar(1)  NOT NULL,
    [CSLMOV_LimpezaMovimentos] varchar(3)  NOT NULL,
    [CSIBLC_ImprimeNoBalancete] varchar(1)  NOT NULL,
    [CSTSLD_TipoSaldo] varchar(1)  NOT NULL,
    [CSSLAL_SaldoAlterado] varchar(1)  NOT NULL,
    [CSSLDA_SaldoActPelosMovim] varchar(1)  NOT NULL,
    [CSMVCC_MovimEContabilizado] varchar(1)  NOT NULL,
    [CSOBS_Observacoes] varchar(40)  NULL,
    [CSDTAB_DataAbertura] int  NOT NULL,
    [CSSITU_Situacao] varchar(1)  NOT NULL,
    [CSMOED_Moeda] varchar(3)  NOT NULL,
    [CSCRMV_RestricaoMovimentacao] varchar(1)  NOT NULL,
    [CSRACE_RestricoesAcesso] varchar(1)  NOT NULL,
    [CSCGRP_GrupoContasComCo] varchar(2)  NULL,
    [CSMSIT_MotivoSituacao] varchar(40)  NULL,
    [CSCPRD_CodigoProduto] varchar(10)  NULL,
    [CSCCPR_CodigoComponente] varchar(10)  NULL,
    [CSCLCP_ClasseComponente] varchar(5)  NOT NULL,
    [CSCCAS_CanalSubscricao] varchar(10)  NULL,
    [CSUSRS_UtilizadorSubscricao] varchar(10)  NULL
);
GO

-- Creating table 'GBCCR_ContasCredito'
CREATE TABLE [dbo].[GBCCR_ContasCredito] (
    [CRNSEQ_Balcao] int  NOT NULL,
    [CRBAL_Balcao] int  NOT NULL,
    [CRNCLI_NrCliente] int  NOT NULL,
    [CRNATR_Natureza] int  NOT NULL,
    [CRNPRO_NrProposta] int  NOT NULL,
    [CRTCRE_TipoCredito] varchar(2)  NOT NULL,
    [CRLCRE_LinhaCredito] varchar(6)  NULL,
    [CRVLR_ValorEmprestimo] decimal(8,2)  NOT NULL,
    [CRUTI_NrUtilizacoes] int  NOT NULL,
    [CRAMR_NrAmortizOuRendas] int  NOT NULL,
    [CRTXNO_TaxaNominal] decimal(5,5)  NOT NULL,
    [CRMATX_ModoAplicacaoTaxa] varchar(1)  NULL,
    [CRPERJ_PeriodicidJurosOuRendas] varchar(1)  NOT NULL,
    [CRDPDJ_ProxDebitoJurosOuRendas] int  NOT NULL,
    [CRDDJR_InicioPerJurosOuRendas] int  NOT NULL,
    [CRTGAR_TipoGarantia] varchar(6)  NULL,
    [CRDTAB_DataAbertura] int  NOT NULL,
    [CREPRZ_CdgEstatisticoPrazo] varchar(2)  NOT NULL,
    [CRSITU_Situacao] varchar(1)  NOT NULL,
    [CRDSIT_DataSituacao] int  NOT NULL,
    [CRSLD_Saldo] decimal(9,2)  NULL,
    [CRSLDC_SaldoCapital] decimal(9,2)  NULL,
    [CRSLDJ_SaldoJuros] decimal(9,2)  NULL,
    [CRSLDI_SaldoCapitalSituIrreg] decimal(9,2)  NULL,
    [CRTJUR_TipoJuros] varchar(1)  NOT NULL,
    [CRREFR_ReferenciaInterna] varchar(10)  NULL,
    [CRREFC_ReferenciaCliente] varchar(20)  NULL,
    [CROBS_Observacoes] varchar(40)  NULL,
    [CRSLAL_SaldoAlterado] varchar(1)  NOT NULL,
    [CRDVNC_DataVencimento] int  NOT NULL,
    [CRTXNG_ComTaxaNegociada] varchar(1)  NOT NULL,
    [CRPERV_PeriodoJuroOuRendaVigor] int  NULL,
    [CRSITP_SituacaoProtegida] varchar(1)  NOT NULL,
    [CRDAAM_RegularizAutomaticas] varchar(1)  NOT NULL,
    [CRMOED_Moeda] varchar(3)  NOT NULL,
    [CRTRND_TipoRenda] varchar(1)  NULL,
    [CRTFPR_FactorProgressaoRnd] decimal(3,3)  NULL,
    [CRVFPR_VlrFactorProgRenda] decimal(8,2)  NULL,
    [CRORDP_OrdemProgressao] varchar(1)  NULL,
    [CRTPRG_TipoProgressao] varchar(1)  NULL,
    [CRCPRU_PeriodicidadeUtiliz] varchar(1)  NULL,
    [CRCPRA_PeriodicidadeAmortiz] varchar(1)  NULL,
    [CRNCLD_NrCliRelacParaDebitos] int  NOT NULL,
    [CRNATD_NatrRelacParaDebitos] int  NOT NULL,
    [CRNSED_NrSeqRelacParaDebitos] int  NOT NULL,
    [CRNCLC_NrCliRelacParaCreditos] int  NOT NULL,
    [CRNATC_NatrRelacParaCreditos] int  NOT NULL,
    [CRNSEC_NrSeqRelacParaCreditos] int  NOT NULL,
    [CRSITJ_SituacaoJuros] varchar(1)  NOT NULL,
    [CRDTSJ_DataSituacaoJuros] int  NOT NULL,
    [CRMSIT_MotivoSituacao] varchar(40)  NULL,
    [CRISJR_ImpostoSeloJurosInclRenda] varchar(1)  NOT NULL,
    [CRBAJ_BaseAnualDiasParaJuros] int  NOT NULL,
    [CRTTXR_TaxaReferencia] varchar(10)  NULL,
    [CRPSPD_ParametroSpread] varchar(2)  NULL,
    [CRSPD_Spread] decimal(5,5)  NULL,
    [CRCPRD_CodigoProduto] varchar(10)  NOT NULL,
    [CRCCPR_CodigoComponente] varchar(10)  NOT NULL,
    [CRCLCP_ClasseComponente] varchar(5)  NOT NULL,
    [CRCCAS_CanalSubscricao] varchar(10)  NOT NULL,
    [CRUSRS_UtilizadorSubscricao] varchar(10)  NOT NULL,
    [CRCBNF_ContaComBonificacoes] varchar(1)  NOT NULL,
    [CRJRPC_JurosPeriodoCarencia] varchar(1)  NULL,
    [CRPRTX_PeriodicidadeRevisaoTx] varchar(1)  NULL,
    [CRDTRT_DtReferenciaRevisaoTx] int  NULL,
    [CRDTUT_DataUltimaRevisaoTaxa] int  NULL,
    [CRTXNN_TaxaNominalNegociada] decimal(5,5)  NULL,
    [CRMATN_ModoAplicacaoTaxaNeg] varchar(1)  NULL,
    [CRTXRN_TaxaReferenciaNeg] varchar(10)  NULL,
    [CRPSPN_ParametroSpreadNeg] varchar(2)  NULL,
    [CRSPDN_SpreadNegociado] decimal(5,5)  NULL,
    [CRTAE_UltimaTaeCalculada] decimal(3,3)  NULL,
    [CRTAEG_UltimaTaegCalculada] decimal(3,3)  NULL,
    [CRDTTA_DataUltimaTae] int  NULL
);
GO

-- Creating table 'GBCDO_ContasDepositosOrdem'
CREATE TABLE [dbo].[GBCDO_ContasDepositosOrdem] (
    [DONSEQ_Balcao] int  NOT NULL,
    [DOBAL_Balcao] int  NOT NULL,
    [DONCLI_NrCliente] int  NOT NULL,
    [DONATR_Natureza] int  NOT NULL,
    [DOSLD_Saldo] decimal(9,2)  NULL,
    [DOSLDV_SaldoPorDataValor] decimal(9,2)  NULL,
    [DONDDESC_DiasDescobertoSaldo] int  NULL,
    [DOSALM_SaldoMedioPorSaldo] decimal(11,2)  NULL,
    [DOSALV_SaldoMedioDataValor] decimal(11,2)  NULL,
    [DOSALD_SaldoMedioDisponivel] decimal(11,2)  NULL,
    [DONDSM_NrDiasSaldoMedio] int  NOT NULL,
    [DOLIMD_LimiteDescoberto] decimal(8,2)  NULL,
    [DOSMIN_SaldoMinimo] decimal(8,2)  NULL,
    [DODLIM_DataExpirLimiteDesc] int  NULL,
    [DOTEXT_TipoExtracto] varchar(1)  NOT NULL,
    [DOPERE_PeriodicidadeExtracto] varchar(1)  NOT NULL,
    [DONUMP_NumerosPretos] decimal(11,2)  NULL,
    [DONUMV_NumerosVermelhos] decimal(11,2)  NULL,
    [DORUMP_RecalculoNrsPretos] decimal(11,2)  NULL,
    [DORUMV_RecalculoNrsVermelhos] decimal(11,2)  NULL,
    [DOMVNE_NrMovNaoSaidosExtr] int  NULL,
    [DOUEXT_NrExtrOuLinhaCader] int  NULL,
    [DODEXT_DataUltimoExtracto] int  NOT NULL,
    [DOSLAL_SaldoAlterado] varchar(1)  NOT NULL,
    [DOTXCN_ComTaxasCredorasNegoc] varchar(1)  NOT NULL,
    [DOTXDN_ComTaxasDevedorasNegoc] varchar(1)  NOT NULL,
    [DODTAB_DataAbertura] int  NOT NULL,
    [DODUMV_DataUltimoMovimento] int  NOT NULL,
    [DODDJR_DataUltimoDebitoJuros] int  NOT NULL,
    [DODCJR_DataUltimoCreditoJuro] int  NOT NULL,
    [DOSITU_SituacaoConta] varchar(1)  NOT NULL,
    [DODSIT_DataSituacao] int  NOT NULL,
    [DOECJ_ComEscalaJuros] varchar(1)  NOT NULL,
    [DOMOED_Moeda] varchar(3)  NOT NULL,
    [DONCLC_ClienteParaJurosCredores] int  NOT NULL,
    [DONATC_NaturezaParaJurosCredor] int  NOT NULL,
    [DONSEC_NrSeqParaJurosCredores] int  NOT NULL,
    [DONJDM_NrsJurosDevedDoMes] decimal(11,2)  NULL,
    [DONJCM_NrsJurosCredDoMes] decimal(11,2)  NULL,
    [DOTXMD_TaxaMediaDia] decimal(5,5)  NULL,
    [DONCLD_ClienteParaJurosDevedor] int  NOT NULL,
    [DONATD_NaturezaParaJurosDeved] int  NOT NULL,
    [DONSED_NrSeqParaJurosDevedor] int  NOT NULL,
    [DONIB_NIB] varchar(21)  NOT NULL,
    [DOCTDB_CativosADebito] decimal(8,2)  NULL,
    [DOCTCR_CativosACredito] decimal(8,2)  NULL,
    [DOCTPD_CativosPendentes] decimal(8,2)  NULL,
    [DONCJC_CalculaJurosCredores] varchar(1)  NOT NULL,
    [DONCJD_CalculaJurosDevedores] varchar(1)  NOT NULL,
    [DOMCHM_NrMaximoChequesPorMes] int  NULL,
    [DODTUR_DataUltimaRequisicao] int  NULL,
    [DORCHM_NrChequesReqNoMes] int  NULL,
    [DOSITP_SituacaoProtegida] varchar(1)  NOT NULL,
    [DOMSIT_MotivoSituacao] varchar(40)  NULL,
    [DOBAJC_BaseAnualDiasJurosCr] int  NOT NULL,
    [DOBAJD_BaseAnualDiasJurosDv] int  NOT NULL,
    [DOCPRD_CodigoProduto] varchar(10)  NOT NULL,
    [DOCCPR_CodigoComponente] varchar(10)  NOT NULL,
    [DOCLCP_ClasseComponente] varchar(5)  NOT NULL,
    [DOCCAS_CanalSubscricao] varchar(10)  NULL,
    [DOUSRS_UtilizadorSubscricao] varchar(10)  NULL
);
GO

-- Creating table 'GBCDP_ContasDepositosPrazo'
CREATE TABLE [dbo].[GBCDP_ContasDepositosPrazo] (
    [DPNSEQ_Balcao] int  NOT NULL,
    [DPBAL_Balcao] int  NULL,
    [DPNCLI_NrCliente] int  NULL,
    [DPNATR_Natureza] int  NULL,
    [DPCCAP_CodigoCapitalizacao] varchar(1)  NULL,
    [DPSLD_Saldo] decimal(9,2)  NULL,
    [DPDTIN_DataInicio] int  NULL,
    [DPNDIA_NrDias] int  NULL,
    [DPDVNC_DataVencimento] int  NULL,
    [DPTXJ_TaxaJuro] decimal(5,5)  NULL,
    [DPNREN_NrRenovacoes] int  NULL,
    [DPSLAL_SaldoAlterado] varchar(1)  NULL,
    [DPDTAB_DataAbertura] int  NULL,
    [DPTXNG_ComTaxaNegociada] varchar(1)  NULL,
    [DPSITU_SituacaoConta] varchar(1)  NULL,
    [DPDSIT_DataSituacao] int  NULL,
    [DPIPRJ_InicioPeriodoJuros] int  NULL,
    [DPPERJ_PeriodicidadeJuros] varchar(1)  NULL,
    [DPPCRJ_FimPeriodoJuros] int  NULL,
    [DPNPRO_NrPromissoria] int  NULL,
    [DPEPRO_PromissoriaEmitida] varchar(1)  NULL,
    [DPNCLJ_NrClienteParaJuros] int  NULL,
    [DPNATJ_NaturezaParaJuros] int  NULL,
    [DPNSEJ_NrSequencialParaJuros] int  NULL,
    [DPEPRZ_CdgEstatisticoPrazo] varchar(2)  NULL,
    [DPMOED_Moeda] varchar(3)  NULL,
    [DPTFVC_TransfereNoVencimento] varchar(1)  NULL,
    [DPCTDB_CativosADebito] decimal(8,2)  NULL,
    [DPCTCR_CativosACredito] decimal(8,2)  NULL,
    [DPCTPD_CativosPendentes] decimal(8,2)  NULL,
    [DPTCJR_TipoCalculoJuros] varchar(1)  NULL,
    [DPPINC_PeriodicidadeIncremento] varchar(1)  NULL,
    [DPTINC_ValorParaIncremento] varchar(10)  NULL,
    [DPDTIC_DataProximoIncremento] int  NULL,
    [DPMSIT_MotivoSituacao] varchar(40)  NULL,
    [DPBAJ_BaseAnualDiasParaJuros] int  NULL,
    [DPTTXR_TaxaReferencia] varchar(10)  NULL,
    [DPPSPD_ParametroSpread] varchar(2)  NULL,
    [DPSPD_Spread] decimal(5,5)  NULL,
    [DPCPRD_CodigoProduto] varchar(10)  NULL,
    [DPCCPR_CodigoComponente] varchar(10)  NULL,
    [DPCLCP_ClasseComponente] varchar(5)  NULL,
    [DPCCAS_CanalSubscricao] varchar(10)  NULL,
    [DPUSRS_UtilizadorSubscricao] varchar(10)  NULL,
    [DPPRTX_PeriodicidadeRevisaoTx] varchar(1)  NULL,
    [DPDTRT_DtReferenciaRevisaoTx] int  NULL,
    [DPDTUT_DataUltimaRevisaoTaxa] int  NULL,
    [DPTXJN_TaxaJurosNegociada] decimal(5,5)  NULL,
    [DPTXRN_TaxaReferenciaNeg] varchar(10)  NULL,
    [DPPSPN_ParametroSpreadNeg] varchar(2)  NULL,
    [DPSPDN_SpreadNegociado] decimal(5,5)  NULL,
    [DPTAE_UltimaTaeCalculada] decimal(3,3)  NULL,
    [DPDTTA_DataUltimaTAE] int  NULL
);
GO

-- Creating table 'GBCLI_Clientes'
CREATE TABLE [dbo].[GBCLI_Clientes] (
    [CLNCLI_Balcao] int  NOT NULL,
    [CLBAL_Balcao] int  NULL,
    [CLDTAB_DataAbertura] int  NULL,
    [CLCRES_CodigoResidencia] varchar(1)  NULL,
    [CLCST_CodigoSectorial] varchar(6)  NULL,
    [CLTCLI_SegmentoCliente] varchar(2)  NULL,
    [CLTTIT_TipoTitularidade] varchar(1)  NULL,
    [CLCORR_EnvioCorrespondencia] varchar(1)  NULL,
    [CLMSGP_ComMensagemPendente] varchar(1)  NULL,
    [CLBLOQ_ComBloqueios] varchar(1)  NULL,
    [CLNIVC_NivelConfidencial] int  NULL,
    [CLGERC_GestorCliente] varchar(10)  NULL,
    [CLOBSV_Observacoes] varchar(50)  NULL,
    [CLEPAR_EmpresaOuParticular] varchar(1)  NULL,
    [CLPAIS_CodigoPais] varchar(3)  NULL,
    [CLCNDM_CondicoesMovimentacao] int  NULL,
    [CLCIAC_ComIsencaoActiva] varchar(1)  NULL,
    [CLCSAC_CodigoServicoApoio] varchar(10)  NULL,
    [CLPCNG_PerfilClienteNegociado] varchar(1)  NULL,
    [CLRACE_RestricoesAcesso] varchar(1)  NULL,
    [GBCLALER_ComAlertas] varchar(1)  NULL,
    [GBCLEXTINT_ExtractoIntegrado] varchar(1)  NULL,
    [GBCLDTUEXT_DataUltimoExtracto] int  NULL,
    [GBCLNUEXT_NumeroUltimoExtracto] int  NULL,
    [GBCLPEREXT_PeriodicidadeExtracto] varchar(1)  NULL
);
GO

-- Creating table 'GBCNDM_CondicoesMovimentacaoConta'
CREATE TABLE [dbo].[GBCNDM_CondicoesMovimentacaoConta] (
    [ATCNDM_CondMovimentacao] int  NOT NULL,
    [ATDCND_Descritivo] varchar(40)  NOT NULL
);
GO

-- Creating table 'GBCODOP_CodigosOperacao'
CREATE TABLE [dbo].[GBCODOP_CodigosOperacao] (
    [COCOPE_CodigoOperacao] int  NOT NULL,
    [COCOPA_CdgOperacaoAnulacao] int  NULL,
    [COTDOC_TipoDocumento] int  NULL,
    [CODESC_DescritivoCdgOper] varchar(40)  NULL,
    [CODEST_DescritivoTipoDoc] varchar(25)  NULL,
    [CODBCR_DebitoOuCredito] varchar(1)  NULL,
    [COPERD_PodeSerPerdido] varchar(1)  NULL,
    [COCTV_PodeSerCativo] varchar(1)  NULL,
    [COPLC_PodeLibertarCativo] varchar(1)  NULL,
    [COLVDF_LancaParaValorDiferente] varchar(1)  NULL,
    [COCHEQ_TipoDocCheques] varchar(1)  NULL,
    [CODEV_CodigoEDevolucao] varchar(1)  NULL,
    [COCOES_PodeSerEstornado] varchar(1)  NULL,
    [COAVLR_AdmiteValoresParaCativar] varchar(1)  NULL,
    [COSCTV_SaldoCativoAAfectar] varchar(1)  NULL,
    [CONVLP_NivelProteccao] varchar(1)  NULL,
    [CODRCX_ValidoEmDiarioCaixa] varchar(1)  NULL,
    [CONDDV_NrDiasParaDataValor] varchar(3)  NULL,
    [COTDDV_TipoDiasParaDataValor] varchar(1)  NULL,
    [CONDCT_NrDiasParaCativo] varchar(3)  NULL,
    [COTDCT_TipoDiasParaCativo] varchar(1)  NULL,
    [COCKDG_ValidaCheckDigit] varchar(1)  NULL,
    [COVIBA_ParmVisadoOuBancario] varchar(1)  NULL,
    [COCZIB_CativoObrigaZib] varchar(1)  NULL,
    [COCOAU_CativoExigeAutorizacao] varchar(1)  NULL,
    [COCVDS_CativoValidaDescoberto] varchar(1)  NULL,
    [COTSAC_SaldoCreditoAAfectar] varchar(1)  NULL,
    [CODOAU_DescativoExigeAutoriz] varchar(1)  NULL,
    [COBALC_BalcaoCcbPorDefeito] int  NULL,
    [COCCB_ContaContabPorDefeito] varchar(13)  NULL,
    [COTRV_ParmTransitoValores] varchar(1)  NULL,
    [COTVLR_TipoValorColectavel] varchar(2)  NULL,
    [COMINV_MovimentoInvisivel] varchar(1)  NULL,
    [COCNOT_CodigoNota] int  NULL,
    [CODMOV_DescritivoMovimento] varchar(40)  NULL,
    [COBSIT_BypassNaSituacaoDoc] varchar(1)  NULL,
    [COPCD_PosicaoConcatDocumento] int  NULL,
    [COCDCX_CertificaDocCaixa] varchar(1)  NULL,
    [COTTYP_TipoTransaccaoParaSwift] varchar(4)  NULL,
    [COVLR_ValorDespesas] decimal(8,2)  NULL,
    [COMOEV_MoedaDespesas] varchar(3)  NULL,
    [CODMOVDES_DescMovimDespesas] varchar(40)  NULL,
    [COFACT_FactorDespesas] decimal(5,5)  NULL,
    [COVLRM_ValorMinimo] decimal(8,2)  NULL,
    [COVLRX_ValorMaximo] decimal(8,2)  NULL,
    [COMOEM_MoedaMinimoMaximo] varchar(3)  NULL,
    [COTISN_TipoIsencao] varchar(5)  NULL,
    [COVISN_ValorIsencao] decimal(8,2)  NULL,
    [COMOEI_MoedaIsencao] varchar(3)  NULL,
    [COTARR_TipoArredondamento] varchar(2)  NULL,
    [COCNOTA_CodigoNotaDespesas] int  NULL,
    [COSITU_Situacao] varchar(1)  NULL,
    [COUSSI_UtilizadorSituacao] varchar(10)  NULL,
    [CODTSI_DataSituacao] int  NULL,
    [COHOSI_HoraSituacao] int  NULL,
    [GBCOCRMOV_ComRestricoesMov] varchar(1)  NULL
);
GO

-- Creating table 'GBCRES_CodigosResidencia'
CREATE TABLE [dbo].[GBCRES_CodigosResidencia] (
    [RECRES_CodigoResidencia] varchar(1)  NOT NULL,
    [REDESC_Descritivo] varchar(25)  NULL
);
GO

-- Creating table 'GBCSTE_CodigosSectoriaisNaoResidentes'
CREATE TABLE [dbo].[GBCSTE_CodigosSectoriaisNaoResidentes] (
    [SECST_CodigoSectorial] varchar(6)  NOT NULL,
    [SESLT_Seleccionavel] varchar(1)  NULL,
    [SEDESC_Descritivo] varchar(40)  NULL,
    [SEOCPA_ObrigatorioCdgPais] varchar(1)  NULL,
    [SEVALE_ValidoEm] varchar(1)  NULL
);
GO

-- Creating table 'GBCSTR_CodigosSectoriaisResidentes'
CREATE TABLE [dbo].[GBCSTR_CodigosSectoriaisResidentes] (
    [SRCST_CodigoSectorial] varchar(6)  NOT NULL,
    [SRSLT_Seleccionavel] varchar(1)  NULL,
    [SRDESC_Descritivo] varchar(40)  NULL,
    [SROCPA_ObrigatorioCdgPais] varchar(1)  NULL,
    [SRVALE_ValidoEm] varchar(1)  NULL
);
GO

-- Creating table 'GBDOC_Documentos'
CREATE TABLE [dbo].[GBDOC_Documentos] (
    [DCTDOC_TipoDocumento] int  NOT NULL,
    [DCNDOC_Documento] int  NOT NULL,
    [DCSITU_SituacaoDocumento] varchar(1)  NOT NULL,
    [DCANOI_Ano] int  NOT NULL
);
GO

-- Creating table 'GBLTIT_LigacaoClientesEntidades'
CREATE TABLE [dbo].[GBLTIT_LigacaoClientesEntidades] (
    [ID] bigint  NOT NULL,
    [LTNCLI_NumeroCliente] int  NULL,
    [LTNTIT_NumeroEntidade] int  NULL,
    [LTRCLI_RelacaoCliente] varchar(2)  NULL,
    [LTRCPE_RelacaoPrimeiraEntidade] varchar(10)  NULL
);
GO

-- Creating table 'GBMORD_Moradas'
CREATE TABLE [dbo].[GBMORD_Moradas] (
    [MONSEQ_NumeroCliente] int  NOT NULL,
    [MONCLI_NumeroCliente] int  NULL,
    [MONATR_Natureza] int  NULL,
    [MOTMOR_TipoMorada] varchar(2)  NULL,
    [MONTIT_NumeroEntidade] int  NULL,
    [MOMORD_Morada] varchar(40)  NULL,
    [MOMOR1_Morada] varchar(40)  NULL,
    [MOCODX_CodigoPostalPais] varchar(7)  NULL,
    [MOTELF_Telefone1] varchar(20)  NULL,
    [GBMOCONT_Contacto1] varchar(20)  NULL,
    [MOTEL1_Telefone2] varchar(20)  NULL,
    [GBMOCONT1_Contacto2] varchar(20)  NULL,
    [MOTFAX_Telefax] varchar(20)  NULL,
    [GBMOSITMOR_SituacaoMorada] varchar(2)  NULL,
    [GBMOSITU_SituacaoRegisto] varchar(1)  NULL,
    [GBMOUSCR_UtilizadorCriacao] varchar(10)  NULL,
    [GBMODTCR_DataCriacao] int  NULL,
    [GBMOHOCR_HoraCriacao] int  NULL
);
GO

-- Creating table 'GBMVCC_MovimentosContasCaucionadas'
CREATE TABLE [dbo].[GBMVCC_MovimentosContasCaucionadas] (
    [MUNDOC_Balcao] int  NOT NULL,
    [MUBAL_Balcao] int  NOT NULL,
    [MUNCLI_NumeroCliente] int  NOT NULL,
    [MUNATR_Natureza] int  NOT NULL,
    [MUNSEQ_NumeroSequencial] int  NOT NULL,
    [MUTDOC_TipoDocumento] int  NOT NULL,
    [MUCOPE_CodigoOperacao] int  NOT NULL,
    [MUVLR_ValorMovimento] decimal(8,2)  NOT NULL,
    [MUSALD_SaldoAposMovimento] decimal(9,2)  NULL,
    [MUUSER_LancadoPor] varchar(10)  NOT NULL,
    [MUHORA_HoraLancamento] int  NULL,
    [MUDATL_DataLancamento] int  NOT NULL,
    [MUDATV_DataValor] int  NOT NULL,
    [MUDRCX_DiarioOuCaixa] varchar(1)  NOT NULL,
    [MUETRB_EstacaoLancamento] varchar(10)  NOT NULL,
    [MUDTEE_DataEmissaoExtracto] int  NULL,
    [MUBALM_BalcaoMovimento] int  NOT NULL,
    [MUBALC_BalcaoCntCcbMov] int  NOT NULL,
    [MUCCB_ContaCcbMovimento] varchar(13)  NOT NULL,
    [MUNOPR_NrOperacao] int  NOT NULL,
    [MUNCX_NumeroCaixa] int  NULL,
    [MUNTCX_NrTransaccaoCaixa] int  NULL,
    [MUNORD_NrOrdemTransaccao] int  NULL,
    [MUMINV_MovimentoInvisivel] varchar(1)  NULL,
    [MUDTCB_DataContabilistica] int  NULL,
    [MUEXCT_ExecutorMovimento] varchar(1)  NULL,
    [MUMOED_Moeda] varchar(3)  NULL,
    [MUDMOV_DescritivoMovimento] varchar(40)  NOT NULL,
    [MUTXA_TaxaAplicadaValorInc] decimal(5,5)  NULL,
    [MUVLRI_ValorIncidencia] decimal(8,2)  NULL,
    [MUAUTR_Autorizacao] bigint  NULL,
    [MUTOTV_TotalValores] decimal(8,2)  NULL,
    [MUCDEV_CodigoDevolucao] varchar(2)  NULL,
    [MUOBS_Observacoes] varchar(30)  NULL
);
GO

-- Creating table 'GBMVCO_MovimentosContasContabilisticas'
CREATE TABLE [dbo].[GBMVCO_MovimentosContasContabilisticas] (
    [MRNDOC_BalcaoCcb] int  NOT NULL,
    [MRBALC_BalcaoCcb] int  NOT NULL,
    [MRCCB_ContaContabilistica] varchar(13)  NOT NULL,
    [MRBAL_Balcao] int  NULL,
    [MRNCLI_NumeroCliente] int  NULL,
    [MRNATR_Natureza] int  NULL,
    [MRNSEQ_NumeroSequencial] int  NULL,
    [MRTDOC_TipoDocumento] int  NOT NULL,
    [MRCOPE_CodigoOperacao] int  NOT NULL,
    [MRVLR_ValorMovimento] decimal(8,2)  NOT NULL,
    [MRSALD_SaldoAposMovimento] decimal(9,2)  NULL,
    [MRUSER_LancadoPor] varchar(10)  NULL,
    [MRHORA_HoraLancamento] int  NULL,
    [MRDATL_DataLancamento] int  NOT NULL,
    [MRDRCX_DiarioOuCaixa] varchar(1)  NOT NULL,
    [MRETRB_EstacaoLancamento] varchar(10)  NOT NULL,
    [MRBALM_BalcaoMovimento] int  NOT NULL,
    [MROBS_Observacoes] varchar(30)  NULL,
    [MRNOPR_NrOperacao] int  NOT NULL,
    [MRNCX_NumeroCaixa] int  NULL,
    [MRNTCX_NrTransaccaoCaixa] int  NULL,
    [MRNORD_NrOrdemTransaccao] int  NOT NULL,
    [MRMINV_MovimentoInvisivel] varchar(1)  NOT NULL,
    [MRDTCB_DataContabilistica] int  NOT NULL,
    [MREXCT_ExecutorMovimento] varchar(1)  NOT NULL,
    [MRMOED_Moeda] varchar(3)  NOT NULL,
    [MRDMOV_DescritivoMovimento] varchar(40)  NOT NULL,
    [MRTXA_TaxaAplicadaValorInc] decimal(5,5)  NULL,
    [MRVLRI_ValorIncidencia] decimal(8,2)  NULL,
    [MRAUTR_Autorizacao] bigint  NULL,
    [MRNTIT_NrEntidadeParaNota] int  NULL,
    [MRMVCC_MovContabilizado] varchar(1)  NOT NULL,
    [MRNCCR_NrclienteCntaRelaciona] int  NULL,
    [MRNTCR_NatContaRelacionada] int  NULL,
    [MRNSCR_NrSeqContaRelacionada] int  NULL,
    [GBMRCONTA_NrConta] bigint  NULL,
    [MRGRPP_GrupoPrecario] varchar(2)  NULL
);
GO

-- Creating table 'GBMVCR_MovimentosContasCredito'
CREATE TABLE [dbo].[GBMVCR_MovimentosContasCredito] (
    [MCNDOC_Balcao] int  NOT NULL,
    [MCBAL_Balcao] int  NOT NULL,
    [MCNCLI_NumeroCliente] int  NOT NULL,
    [MCNATR_Natureza] int  NOT NULL,
    [MCNSEQ_NumeroSequencial] int  NOT NULL,
    [MCTDOC_TipoDocumento] int  NOT NULL,
    [MCCOPE_CodigoOperacao] int  NOT NULL,
    [MCVLR_ValorMovimento] decimal(8,2)  NOT NULL,
    [MCSALD_SaldoAposMovimento] decimal(9,2)  NULL,
    [MCUSER_LancadoPor] varchar(10)  NOT NULL,
    [MCHORA_HoraLancamento] int  NULL,
    [MCDATL_DataLancamento] int  NOT NULL,
    [MCDATV_DataValor] int  NOT NULL,
    [MCDRCX_DiarioOuCaixa] varchar(1)  NOT NULL,
    [MCETRB_EstacaoLancamento] varchar(10)  NOT NULL,
    [MCDTEE_DataEmissaoExtracto] int  NULL,
    [MCBALM_BalcaoMovimento] int  NOT NULL,
    [MCBALC_BalcaoContaCcbMov] int  NOT NULL,
    [MCCCB_ContaCcbMovimento] varchar(13)  NOT NULL,
    [MCNUAM_NrUtlzAmrtPer] int  NULL,
    [MCNOPR_NrOperacao] int  NOT NULL,
    [MCNCX_NumeroCaixa] int  NULL,
    [MCNTCX_NrTransaccaoCaixa] int  NULL,
    [MCNORD_NrOrdemTransaccao] int  NOT NULL,
    [MCMINV_MovimentoInvisivel] varchar(1)  NOT NULL,
    [MCDTCB_DataContabilistica] int  NOT NULL,
    [MCEXCT_ExecutorMovimento] varchar(1)  NOT NULL,
    [MCMOED_Moeda] varchar(3)  NOT NULL,
    [MCDMOV_DescritivoMovimento] varchar(40)  NOT NULL,
    [MCTXA_TaxaAplicadaValorInc] decimal(5,5)  NULL,
    [MCVLRI_ValorIncidencia] decimal(8,2)  NULL,
    [MCAUTR_Autorizacao] bigint  NULL,
    [MCTBON_TipoBonificacao] varchar(10)  NULL,
    [MCOBS_Observacoes] varchar(30)  NULL
);
GO

-- Creating table 'GBMVDO_MovimentosContasDepositosOrdem'
CREATE TABLE [dbo].[GBMVDO_MovimentosContasDepositosOrdem] (
    [MVNDOC_Balcao] int  NOT NULL,
    [MVBAL_Balcao] int  NOT NULL,
    [MVNCLI_NumeroCliente] int  NOT NULL,
    [MVNATR_Natureza] int  NOT NULL,
    [MVNSEQ_NumeroSequencial] int  NOT NULL,
    [MVTDOC_TipoDocumento] int  NOT NULL,
    [MVCOPE_CodigoOperacao] int  NOT NULL,
    [MVVLR_ValorQueAfectaConta] decimal(8,2)  NOT NULL,
    [MVMOED_MoedaQueAfectaConta] varchar(3)  NOT NULL,
    [MVVLRT_ValorTransaccao] decimal(8,2)  NOT NULL,
    [MVMOET_MoedaTransaccao] varchar(3)  NOT NULL,
    [MVSALD_SaldoAposMovimento] decimal(9,2)  NOT NULL,
    [MVUSER_LancadoPor] varchar(10)  NOT NULL,
    [MVHORA_HoraLancamento] int  NOT NULL,
    [MVDATL_DataLancamento] int  NOT NULL,
    [MVDATV_DataValor] int  NOT NULL,
    [MVDRCX_DiarioOuCaixa] varchar(1)  NOT NULL,
    [MVETRB_EstacaoLancamento] varchar(10)  NOT NULL,
    [MVCCAS_Canal] varchar(10)  NULL,
    [MVDTEE_DataEmissaoExtracto] int  NULL,
    [MVBALM_BalcaoMovimento] int  NOT NULL,
    [MVBALC_BalcaoContaCcbMov] int  NOT NULL,
    [MVCCB_ContaCcbMovimento] varchar(13)  NOT NULL,
    [MVNOPR_NrOperacao] int  NOT NULL,
    [MVNCX_NumeroCaixa] int  NULL,
    [MVNTCX_NrTransaccaoCaixa] int  NULL,
    [MVNORD_NrOrdemTransaccao] int  NOT NULL,
    [MVMINV_MovimentoInvisivel] varchar(1)  NOT NULL,
    [MVDTCB_DataContabilistica] int  NOT NULL,
    [MVEXCT_ExecutorMovimento] varchar(1)  NOT NULL,
    [MVDMOV_DescritivoMovimento] varchar(40)  NULL,
    [MVTXA_TaxaAplicadaValorInc] decimal(5,5)  NULL,
    [MVVLRI_ValorIncidencia] decimal(8,2)  NULL,
    [MVAUTR_Autorizacao] bigint  NULL,
    [MVTOTV_TotalValores] decimal(8,2)  NULL,
    [MVCDEV_CodigoDevolucao] varchar(2)  NULL,
    [MVVLRE_ValorParaExtracto] decimal(8,2)  NOT NULL,
    [MVOBS_Observacoes] varchar(30)  NULL
);
GO

-- Creating table 'GBMVDP_MovimentosContasDepositosPrazo'
CREATE TABLE [dbo].[GBMVDP_MovimentosContasDepositosPrazo] (
    [MPNDOC_Balcao] decimal(3,0)  NOT NULL,
    [MPBAL_Balcao] decimal(3,0)  NULL,
    [MPNCLI_NumeroCliente] decimal(5,0)  NULL,
    [MPNATR_Natureza] decimal(2,0)  NULL,
    [MPNSEQ_NumeroSequencial] decimal(2,0)  NULL,
    [MPTDOC_TipoDocumento] decimal(2,0)  NULL,
    [MPCOPE_CodigoOperacao] decimal(2,0)  NULL,
    [MPVLR_ValorMovimento] decimal(8,2)  NULL,
    [MPSLDI_SaldoIncremento] decimal(9,2)  NULL,
    [MPSALD_SaldoAposMovimento] decimal(9,2)  NULL,
    [MPSLDV_SaldoAposDataValor] decimal(9,2)  NULL,
    [MPUSER_LancadoPor] varchar(10)  NULL,
    [MPHORA_HoraLancamento] decimal(4,0)  NULL,
    [MPDATL_DataLancamento] decimal(5,0)  NULL,
    [MPDATV_DataValor] decimal(5,0)  NULL,
    [MPDRCX_DiarioOuCaixa] varchar(1)  NULL,
    [MPETRB_EstacaoLancamento] varchar(10)  NULL,
    [MPDTEE_DataEmissaoExtracto] decimal(5,0)  NULL,
    [MPBALM_BalcaoMovimento] decimal(3,0)  NULL,
    [MPBALC_BalcaoContaCcbMov] decimal(3,0)  NULL,
    [MPCCB_ContaCcbMovimento] varchar(13)  NULL,
    [MPNOPR_NumeroOperacao] decimal(5,0)  NULL,
    [MPNCX_NumeroCaixa] decimal(2,0)  NULL,
    [MPNTCX_NrTransaccaoCaixa] decimal(3,0)  NULL,
    [MPMNSL_MovParaMensualizar] varchar(1)  NULL,
    [MPTMOV_TipoMovimento] varchar(1)  NULL,
    [MPNORD_NrOrdemTransacca] decimal(4,0)  NULL,
    [MPMINV_MovimentoInvisivel] varchar(1)  NULL,
    [MPDTCB_DataContabilistica] decimal(5,0)  NULL,
    [MPEXCT_ExecutorMovimento] varchar(1)  NULL,
    [MPMOED_Moeda] varchar(3)  NULL,
    [MPDMOV_DescritivoMovimento] varchar(40)  NULL,
    [MPTXA_TaxaAplicadaValorI] decimal(5,5)  NULL,
    [MPVLRI_ValorIncidencia] decimal(8,2)  NULL,
    [MPAUTR_Autorizacao] decimal(6,0)  NULL,
    [MPTOTV_TotalValores] decimal(8,2)  NULL,
    [MPDVNC_DataVencimento] decimal(5,0)  NULL,
    [MPNDIA_NumeroDias] decimal(3,0)  NULL,
    [MPTXJ_TaxaJuro] decimal(5,5)  NULL,
    [MPCCAP_CodigoCapitalizacao] varchar(1)  NULL,
    [MPPENA_PenalizacaoAlterada] varchar(1)  NULL,
    [MPPENJ_NrDiasPenalizacao] decimal(3,0)  NULL,
    [MPTXPE_TaxaPenalizacao] decimal(4,3)  NULL,
    [MPTXM_TaxaMobilizacao] decimal(5,5)  NULL,
    [MPOBS_Observacoes] varchar(30)  NULL
);
GO

-- Creating table 'GBNATR_NaturezasContas'
CREATE TABLE [dbo].[GBNATR_NaturezasContas] (
    [NTNATR_Natureza] int  NOT NULL,
    [NTDESC_Descritivo] varchar(30)  NULL,
    [NTDESR_DescritivoReduzido] varchar(10)  NULL,
    [NTNULC_NrMaximoContas] int  NULL,
    [NTTSLD_TipoSaldo] varchar(1)  NULL,
    [NTCLCP_ClasseComponente] varchar(5)  NULL,
    [NTTNSC_TipoParaNatrSemContas] varchar(1)  NULL
);
GO

-- Creating table 'GBOPR_Operacoes'
CREATE TABLE [dbo].[GBOPR_Operacoes] (
    [X1NOPR_NumeroOperacao] int  NOT NULL,
    [X1TTTR_TipoTransaccao] varchar(5)  NOT NULL,
    [X1SITU_SituacaoOperacao] varchar(1)  NOT NULL,
    [X1MVES_MovimentosEstornados] varchar(1)  NOT NULL,
    [X1HORA_HoraInicioExecucao] int  NULL,
    [X1DTIN_DataInicioExecucao] int  NULL
);
GO

-- Creating table 'GBTCLI_SegmentoCliente'
CREATE TABLE [dbo].[GBTCLI_SegmentoCliente] (
    [TCTIPO_Tipo] varchar(2)  NOT NULL,
    [TCDESC_Descritivo] varchar(15)  NULL,
    [TCPBAL_SoPermitidoNosBalcoes] varchar(20)  NULL
);
GO

-- Creating table 'GBTIT_Entidade'
CREATE TABLE [dbo].[GBTIT_Entidade] (
    [TTNUMT_NrEntidade] int  NOT NULL,
    [TTTIPT_EmpresaOuParticular] varchar(1)  NULL,
    [TTNOMT_NomeEntidade] varchar(40)  NULL,
    [TTNOME_NomeSemTitulo] varchar(40)  NULL,
    [TTNOMR_NomeReduzido] varchar(14)  NULL,
    [TTDNSC_DataNascimento] int  NULL,
    [TTSEXO_Sexo] varchar(1)  NULL,
    [TTHABL_Habilitacoes] varchar(1)  NULL,
    [TTACTP_ActividadeProfissional] varchar(2)  NULL,
    [GBTTPROF_Profissao] varchar(3)  NULL,
    [GBTTTIPIDF_TipoIdentificacaoFiscal] varchar(3)  NULL,
    [TTNIF_NrIdentificacaoFiscal] varchar(15)  NULL,
    [TTBAIR_ReparticaoFiscal] int  NULL,
    [GBTTCTGFSC_CategoriaFiscal] varchar(1)  NULL,
    [TTTIDE_TipoIdentificacao] varchar(3)  NULL,
    [TTNIDE_NrIdentificacao] varchar(15)  NULL,
    [GBTTCKDGID_CheckDigitIdentificacao] int  NULL,
    [TTLOCA_LocalEmissao] varchar(20)  NULL,
    [TTDTEI_DataEmissao] int  NULL,
    [GBTTDTVAL_DataValidadeDocumento] int  NULL,
    [GBTTNUMACO_NrMatriculaConservatoria] varchar(20)  NULL,
    [GBTTNOCONS_NomeConservatoria] varchar(20)  NULL,
    [GBTTNUPBDO_NrPublicacaoDiarioOficial] varchar(20)  NULL,
    [TTNAC_Nacionalidade] varchar(3)  NULL,
    [TTNATU_Naturalidade] varchar(25)  NULL,
    [TTECIV_EstadoCivil] varchar(1)  NULL,
    [TTRCAS_RegimeCasamento] varchar(1)  NULL,
    [TTPAI_NomePai] varchar(40)  NULL,
    [TTMAE_NomeMae] varchar(40)  NULL,
    [TTENTP_EntidadePatronal] varchar(40)  NULL,
    [TTFUCA_FuncaoOuCargo] varchar(40)  NULL,
    [TTDTAD_DataAdmissao] int  NULL,
    [TTTSOC_TipoSociedade] varchar(1)  NULL,
    [TTCAE_CodigoActividadeEconomica] varchar(6)  NULL,
    [GBTTCAESC_CodigoActividadeEconomicaSecundario] varchar(6)  NULL,
    [TTDTCT_DataConstituicao] int  NULL,
    [TTDTPB_DataPublicacao] int  NULL,
    [TTSEDE_DomicilioOuSede] varchar(30)  NULL,
    [TTCSRA_CapitalSocialOuRendimentoAnual] bigint  NULL,
    [TTMOED_MoedaCsra] varchar(3)  NULL,
    [TTVINC_VinculoComOutras] varchar(2)  NULL,
    [TTNCTR_NrCentralRisco] bigint  NULL,
    [TTCRES_CodigoResidencia] varchar(1)  NULL,
    [TTCST_CodigoSectorial] varchar(6)  NULL,
    [TTPAIS_CodigoPais] varchar(3)  NULL,
    [TTTPEN_TipoEntidade] varchar(1)  NULL,
    [TTBLOQ_ComBloqueios] varchar(1)  NULL,
    [GBTTALER_ComAlertas] varchar(1)  NULL
);
GO

-- Creating table 'GBTPENT_TiposEntidades'
CREATE TABLE [dbo].[GBTPENT_TiposEntidades] (
    [NITPEN_TipoEntidade] varchar(1)  NOT NULL,
    [NIDTPE_Descritivo] varchar(30)  NULL,
    [NIPRCV_ProcessoValido] varchar(1)  NULL,
    [NICOUR_ComunicaParaUtilizadoresRisco] varchar(1)  NULL,
    [NICOCR_ComunicaParaCentralRisco] varchar(1)  NULL,
    [GBNIIDMIN_IdadeMinima] int  NULL,
    [GBNIIDMAX_IdadeMaxima] int  NULL,
    [NIUSCR_UtilizadorCriacao] varchar(10)  NULL,
    [NIDTCR_DataCriacao] int  NULL,
    [NIHOCR_HoraCriacao] int  NULL,
    [NISITU_Situacao] varchar(1)  NULL
);
GO

-- Creating table 'GBTRCLI_TiposRelacoesEntidadesClientes'
CREATE TABLE [dbo].[GBTRCLI_TiposRelacoesEntidadesClientes] (
    [RTRCLI_RelacaoComCliente] varchar(2)  NOT NULL,
    [RTSORD_SeqOrdenacao] varchar(2)  NULL,
    [RTDESC_Descritivo] varchar(15)  NULL,
    [RTVCPR_ValidoCliPart] varchar(1)  NULL,
    [RTVCEP_ValidoCliEmpresa] varchar(1)  NULL,
    [RTSLDT_InfluenciaSldTit] varchar(1)  NULL,
    [RTPRCH_PodeReqCheques] varchar(1)  NULL,
    [RTCOUR_ComunicaParaUtilRisco] varchar(1)  NULL,
    [RTCOCR_ComunicaParaCentRisco] varchar(1)  NULL,
    [RTSITU_Situacao] varchar(1)  NULL,
    [RTDTCR_DataCriacao] int  NULL,
    [RTHOCR_HoraCriacao] int  NULL,
    [RTUSCR_UtilizadorCriacao] varchar(10)  NULL
);
GO

-- Creating table 'PACTP_ActividadeProfissional'
CREATE TABLE [dbo].[PACTP_ActividadeProfissional] (
    [PACTV_Actividade] varchar(2)  NOT NULL,
    [PACDC_Descritivo] varchar(35)  NULL
);
GO

-- Creating table 'PESTC_EstadoCivil'
CREATE TABLE [dbo].[PESTC_EstadoCivil] (
    [EECIV_EstadoCivil] varchar(1)  NOT NULL,
    [EDCIV_Descritivo] varchar(15)  NULL,
    [ERCAV_RegimesCasamentoValidos] varchar(10)  NULL
);
GO

-- Creating table 'PHBLT_HabilitacoesLiterarias'
CREATE TABLE [dbo].[PHBLT_HabilitacoesLiterarias] (
    [PHBTP_HabilitacoesLiterarias] varchar(1)  NOT NULL,
    [HBDC_Descritivo] varchar(35)  NULL,
    [SITU_Situacao] varchar(1)  NULL,
    [USCR_UtilizadorCriacao] varchar(10)  NULL,
    [DTCR_DataCriacao] datetime  NULL,
    [HOCR_HoraCriacao] datetime  NULL
);
GO

-- Creating table 'PPAIS_Paises'
CREATE TABLE [dbo].[PPAIS_Paises] (
    [ACPAI_SiglaPais] varchar(2)  NOT NULL,
    [ASPAI_SiglaPais] varchar(2)  NULL,
    [ANPAI_NumeroPais] int  NULL,
    [ADPAI_DescricaoPais] varchar(40)  NULL,
    [AINDI_IndicativoInternacional] varchar(3)  NULL,
    [ACID1_CodigoIdioma1] varchar(3)  NULL,
    [ACID2_CodigoIdioma2] varchar(3)  NULL,
    [ACID3_CodigoIdioma3] varchar(3)  NULL,
    [ASITU_Situacao] varchar(1)  NULL,
    [AUSCR_UtilizadorCriacao] varchar(10)  NULL,
    [ADTCR_DataCriacao] int  NULL,
    [AHOCR_HoraCriacao] int  NULL,
    [AUSDE_UtilizadorDesactivacao] varchar(10)  NULL,
    [ADTDE_DataDesactivacao] int  NULL,
    [AHODE_HoraDesactivacao] int  NULL
);
GO

-- Creating table 'PPROF_Profissoes'
CREATE TABLE [dbo].[PPROF_Profissoes] (
    [PPRPROF_CodigoProfissao] varchar(3)  NOT NULL,
    [PPRDESC_Descritivo] varchar(30)  NULL,
    [PPRACTV_CdgActividadeValidos] varchar(10)  NULL
);
GO

-- Creating table 'PREGC_RegimesCasamento'
CREATE TABLE [dbo].[PREGC_RegimesCasamento] (
    [CRCAS_RegimeCasamento] varchar(1)  NOT NULL,
    [CDCAS_Descritivo] varchar(20)  NULL
);
GO

-- Creating table 'PTIDD_TiposIdentificacao'
CREATE TABLE [dbo].[PTIDD_TiposIdentificacao] (
    [PTITP_TipoIdentificacao] varchar(3)  NOT NULL,
    [PTIDC_Descritivo] varchar(30)  NULL,
    [POLOC_ObrigaLocalEmissao] varchar(1)  NULL,
    [PSITU_Situacao] varchar(1)  NULL,
    [PPASD_PermiteAssociarSeDesactivado] varchar(1)  NULL,
    [PIDTIPUTL_TipoUtilizacao] varchar(1)  NULL,
    [PIDRCLCKD_RotinaCalculoCheckDigit] varchar(10)  NULL,
    [PIDPARM1_Parametro1ParaRotina] varchar(40)  NULL,
    [PIDPARM2_Parametro2ParaRotina] varchar(40)  NULL,
    [PIDTRCKDG_TratamentoParaCheckDigit] varchar(1)  NULL,
    [PIDCARMIN_NrMinimoCaracteres] int  NULL,
    [PIDCARMAX_NrMaximoCaracteres] int  NULL
);
GO

-- --------------------------------------------------
-- Creating all PRIMARY KEY constraints
-- --------------------------------------------------

-- Creating primary key on [CCNSEQ_Balcao] in table 'GBCCC_ContasCaucionadas'
ALTER TABLE [dbo].[GBCCC_ContasCaucionadas]
ADD CONSTRAINT [PK_GBCCC_ContasCaucionadas]
    PRIMARY KEY CLUSTERED ([CCNSEQ_Balcao] ASC);
GO

-- Creating primary key on [CSNSEQ_BalcaoContaContab] in table 'GBCCO_ContasContabilisticas'
ALTER TABLE [dbo].[GBCCO_ContasContabilisticas]
ADD CONSTRAINT [PK_GBCCO_ContasContabilisticas]
    PRIMARY KEY CLUSTERED ([CSNSEQ_BalcaoContaContab] ASC);
GO

-- Creating primary key on [CRNSEQ_Balcao] in table 'GBCCR_ContasCredito'
ALTER TABLE [dbo].[GBCCR_ContasCredito]
ADD CONSTRAINT [PK_GBCCR_ContasCredito]
    PRIMARY KEY CLUSTERED ([CRNSEQ_Balcao] ASC);
GO

-- Creating primary key on [DONSEQ_Balcao] in table 'GBCDO_ContasDepositosOrdem'
ALTER TABLE [dbo].[GBCDO_ContasDepositosOrdem]
ADD CONSTRAINT [PK_GBCDO_ContasDepositosOrdem]
    PRIMARY KEY CLUSTERED ([DONSEQ_Balcao] ASC);
GO

-- Creating primary key on [DPNSEQ_Balcao] in table 'GBCDP_ContasDepositosPrazo'
ALTER TABLE [dbo].[GBCDP_ContasDepositosPrazo]
ADD CONSTRAINT [PK_GBCDP_ContasDepositosPrazo]
    PRIMARY KEY CLUSTERED ([DPNSEQ_Balcao] ASC);
GO

-- Creating primary key on [CLNCLI_Balcao] in table 'GBCLI_Clientes'
ALTER TABLE [dbo].[GBCLI_Clientes]
ADD CONSTRAINT [PK_GBCLI_Clientes]
    PRIMARY KEY CLUSTERED ([CLNCLI_Balcao] ASC);
GO

-- Creating primary key on [ATCNDM_CondMovimentacao] in table 'GBCNDM_CondicoesMovimentacaoConta'
ALTER TABLE [dbo].[GBCNDM_CondicoesMovimentacaoConta]
ADD CONSTRAINT [PK_GBCNDM_CondicoesMovimentacaoConta]
    PRIMARY KEY CLUSTERED ([ATCNDM_CondMovimentacao] ASC);
GO

-- Creating primary key on [COCOPE_CodigoOperacao] in table 'GBCODOP_CodigosOperacao'
ALTER TABLE [dbo].[GBCODOP_CodigosOperacao]
ADD CONSTRAINT [PK_GBCODOP_CodigosOperacao]
    PRIMARY KEY CLUSTERED ([COCOPE_CodigoOperacao] ASC);
GO

-- Creating primary key on [RECRES_CodigoResidencia] in table 'GBCRES_CodigosResidencia'
ALTER TABLE [dbo].[GBCRES_CodigosResidencia]
ADD CONSTRAINT [PK_GBCRES_CodigosResidencia]
    PRIMARY KEY CLUSTERED ([RECRES_CodigoResidencia] ASC);
GO

-- Creating primary key on [SECST_CodigoSectorial] in table 'GBCSTE_CodigosSectoriaisNaoResidentes'
ALTER TABLE [dbo].[GBCSTE_CodigosSectoriaisNaoResidentes]
ADD CONSTRAINT [PK_GBCSTE_CodigosSectoriaisNaoResidentes]
    PRIMARY KEY CLUSTERED ([SECST_CodigoSectorial] ASC);
GO

-- Creating primary key on [SRCST_CodigoSectorial] in table 'GBCSTR_CodigosSectoriaisResidentes'
ALTER TABLE [dbo].[GBCSTR_CodigosSectoriaisResidentes]
ADD CONSTRAINT [PK_GBCSTR_CodigosSectoriaisResidentes]
    PRIMARY KEY CLUSTERED ([SRCST_CodigoSectorial] ASC);
GO

-- Creating primary key on [DCTDOC_TipoDocumento] in table 'GBDOC_Documentos'
ALTER TABLE [dbo].[GBDOC_Documentos]
ADD CONSTRAINT [PK_GBDOC_Documentos]
    PRIMARY KEY CLUSTERED ([DCTDOC_TipoDocumento] ASC);
GO

-- Creating primary key on [ID] in table 'GBLTIT_LigacaoClientesEntidades'
ALTER TABLE [dbo].[GBLTIT_LigacaoClientesEntidades]
ADD CONSTRAINT [PK_GBLTIT_LigacaoClientesEntidades]
    PRIMARY KEY CLUSTERED ([ID] ASC);
GO

-- Creating primary key on [MONSEQ_NumeroCliente] in table 'GBMORD_Moradas'
ALTER TABLE [dbo].[GBMORD_Moradas]
ADD CONSTRAINT [PK_GBMORD_Moradas]
    PRIMARY KEY CLUSTERED ([MONSEQ_NumeroCliente] ASC);
GO

-- Creating primary key on [MUNDOC_Balcao] in table 'GBMVCC_MovimentosContasCaucionadas'
ALTER TABLE [dbo].[GBMVCC_MovimentosContasCaucionadas]
ADD CONSTRAINT [PK_GBMVCC_MovimentosContasCaucionadas]
    PRIMARY KEY CLUSTERED ([MUNDOC_Balcao] ASC);
GO

-- Creating primary key on [MRNDOC_BalcaoCcb] in table 'GBMVCO_MovimentosContasContabilisticas'
ALTER TABLE [dbo].[GBMVCO_MovimentosContasContabilisticas]
ADD CONSTRAINT [PK_GBMVCO_MovimentosContasContabilisticas]
    PRIMARY KEY CLUSTERED ([MRNDOC_BalcaoCcb] ASC);
GO

-- Creating primary key on [MCNDOC_Balcao] in table 'GBMVCR_MovimentosContasCredito'
ALTER TABLE [dbo].[GBMVCR_MovimentosContasCredito]
ADD CONSTRAINT [PK_GBMVCR_MovimentosContasCredito]
    PRIMARY KEY CLUSTERED ([MCNDOC_Balcao] ASC);
GO

-- Creating primary key on [MVNDOC_Balcao] in table 'GBMVDO_MovimentosContasDepositosOrdem'
ALTER TABLE [dbo].[GBMVDO_MovimentosContasDepositosOrdem]
ADD CONSTRAINT [PK_GBMVDO_MovimentosContasDepositosOrdem]
    PRIMARY KEY CLUSTERED ([MVNDOC_Balcao] ASC);
GO

-- Creating primary key on [MPNDOC_Balcao] in table 'GBMVDP_MovimentosContasDepositosPrazo'
ALTER TABLE [dbo].[GBMVDP_MovimentosContasDepositosPrazo]
ADD CONSTRAINT [PK_GBMVDP_MovimentosContasDepositosPrazo]
    PRIMARY KEY CLUSTERED ([MPNDOC_Balcao] ASC);
GO

-- Creating primary key on [NTNATR_Natureza] in table 'GBNATR_NaturezasContas'
ALTER TABLE [dbo].[GBNATR_NaturezasContas]
ADD CONSTRAINT [PK_GBNATR_NaturezasContas]
    PRIMARY KEY CLUSTERED ([NTNATR_Natureza] ASC);
GO

-- Creating primary key on [X1NOPR_NumeroOperacao] in table 'GBOPR_Operacoes'
ALTER TABLE [dbo].[GBOPR_Operacoes]
ADD CONSTRAINT [PK_GBOPR_Operacoes]
    PRIMARY KEY CLUSTERED ([X1NOPR_NumeroOperacao] ASC);
GO

-- Creating primary key on [TCTIPO_Tipo] in table 'GBTCLI_SegmentoCliente'
ALTER TABLE [dbo].[GBTCLI_SegmentoCliente]
ADD CONSTRAINT [PK_GBTCLI_SegmentoCliente]
    PRIMARY KEY CLUSTERED ([TCTIPO_Tipo] ASC);
GO

-- Creating primary key on [TTNUMT_NrEntidade] in table 'GBTIT_Entidade'
ALTER TABLE [dbo].[GBTIT_Entidade]
ADD CONSTRAINT [PK_GBTIT_Entidade]
    PRIMARY KEY CLUSTERED ([TTNUMT_NrEntidade] ASC);
GO

-- Creating primary key on [NITPEN_TipoEntidade] in table 'GBTPENT_TiposEntidades'
ALTER TABLE [dbo].[GBTPENT_TiposEntidades]
ADD CONSTRAINT [PK_GBTPENT_TiposEntidades]
    PRIMARY KEY CLUSTERED ([NITPEN_TipoEntidade] ASC);
GO

-- Creating primary key on [RTRCLI_RelacaoComCliente] in table 'GBTRCLI_TiposRelacoesEntidadesClientes'
ALTER TABLE [dbo].[GBTRCLI_TiposRelacoesEntidadesClientes]
ADD CONSTRAINT [PK_GBTRCLI_TiposRelacoesEntidadesClientes]
    PRIMARY KEY CLUSTERED ([RTRCLI_RelacaoComCliente] ASC);
GO

-- Creating primary key on [PACTV_Actividade] in table 'PACTP_ActividadeProfissional'
ALTER TABLE [dbo].[PACTP_ActividadeProfissional]
ADD CONSTRAINT [PK_PACTP_ActividadeProfissional]
    PRIMARY KEY CLUSTERED ([PACTV_Actividade] ASC);
GO

-- Creating primary key on [EECIV_EstadoCivil] in table 'PESTC_EstadoCivil'
ALTER TABLE [dbo].[PESTC_EstadoCivil]
ADD CONSTRAINT [PK_PESTC_EstadoCivil]
    PRIMARY KEY CLUSTERED ([EECIV_EstadoCivil] ASC);
GO

-- Creating primary key on [PHBTP_HabilitacoesLiterarias] in table 'PHBLT_HabilitacoesLiterarias'
ALTER TABLE [dbo].[PHBLT_HabilitacoesLiterarias]
ADD CONSTRAINT [PK_PHBLT_HabilitacoesLiterarias]
    PRIMARY KEY CLUSTERED ([PHBTP_HabilitacoesLiterarias] ASC);
GO

-- Creating primary key on [ACPAI_SiglaPais] in table 'PPAIS_Paises'
ALTER TABLE [dbo].[PPAIS_Paises]
ADD CONSTRAINT [PK_PPAIS_Paises]
    PRIMARY KEY CLUSTERED ([ACPAI_SiglaPais] ASC);
GO

-- Creating primary key on [PPRPROF_CodigoProfissao] in table 'PPROF_Profissoes'
ALTER TABLE [dbo].[PPROF_Profissoes]
ADD CONSTRAINT [PK_PPROF_Profissoes]
    PRIMARY KEY CLUSTERED ([PPRPROF_CodigoProfissao] ASC);
GO

-- Creating primary key on [CRCAS_RegimeCasamento] in table 'PREGC_RegimesCasamento'
ALTER TABLE [dbo].[PREGC_RegimesCasamento]
ADD CONSTRAINT [PK_PREGC_RegimesCasamento]
    PRIMARY KEY CLUSTERED ([CRCAS_RegimeCasamento] ASC);
GO

-- Creating primary key on [PTITP_TipoIdentificacao] in table 'PTIDD_TiposIdentificacao'
ALTER TABLE [dbo].[PTIDD_TiposIdentificacao]
ADD CONSTRAINT [PK_PTIDD_TiposIdentificacao]
    PRIMARY KEY CLUSTERED ([PTITP_TipoIdentificacao] ASC);
GO

-- --------------------------------------------------
-- Creating all FOREIGN KEY constraints
-- --------------------------------------------------

-- Creating foreign key on [TTHABL_Habilitacoes] in table 'GBTIT_Entidade'
ALTER TABLE [dbo].[GBTIT_Entidade]
ADD CONSTRAINT [FK_GBTIT_Entidade_PHBLT_HabilitacoesLiterarias]
    FOREIGN KEY ([TTHABL_Habilitacoes])
    REFERENCES [dbo].[PHBLT_HabilitacoesLiterarias]
        ([PHBTP_HabilitacoesLiterarias])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_GBTIT_Entidade_PHBLT_HabilitacoesLiterarias'
CREATE INDEX [IX_FK_GBTIT_Entidade_PHBLT_HabilitacoesLiterarias]
ON [dbo].[GBTIT_Entidade]
    ([TTHABL_Habilitacoes]);
GO

-- --------------------------------------------------
-- Script has ended
-- --------------------------------------------------