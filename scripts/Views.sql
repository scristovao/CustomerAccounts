USE [CustomerAccounts]
GO
/****** Object:  View [dbo].[VConsultaDocumentos_DadosMovimentoContaPrazo]    Script Date: 21/12/2018 16:25:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[VConsultaDocumentos_DadosMovimentoContaPrazo]
AS
SELECT        dbo.GBMVDP_MovimentosContasDepositosPrazo.MPNCLI_NumeroCliente + dbo.GBMVDP_MovimentosContasDepositosPrazo.MPNATR_Natureza + dbo.GBMVDP_MovimentosContasDepositosPrazo.MPNSEQ_NumeroSequencial
                          AS ContaDoMovimentoPrazo, dbo.GBMVDP_MovimentosContasDepositosPrazo.MPDMOV_DescritivoMovimento, dbo.GBMVDP_MovimentosContasDepositosPrazo.MPVLR_ValorMovimento, 
                         dbo.GBMVDP_MovimentosContasDepositosPrazo.MPMOED_Moeda, dbo.GBMVDP_MovimentosContasDepositosPrazo.MPDATV_DataValor, dbo.GBMVDP_MovimentosContasDepositosPrazo.MPNOPR_NumeroOperacao, 
                         dbo.GBMVDP_MovimentosContasDepositosPrazo.MPUSER_LancadoPor, dbo.GBMVDP_MovimentosContasDepositosPrazo.MPDATL_DataLancamento, 
                         dbo.GBMVDP_MovimentosContasDepositosPrazo.MPCCB_ContaCcbMovimento, dbo.GBMVDP_MovimentosContasDepositosPrazo.MPDTCB_DataContabilistica, 
                         dbo.GBMVDP_MovimentosContasDepositosPrazo.MPAUTR_Autorizacao
FROM            dbo.GBDOC_Documentos INNER JOIN
                         dbo.GBCODOP_CodigosOperacao ON dbo.GBDOC_Documentos.DCTDOC_TipoDocumento = dbo.GBCODOP_CodigosOperacao.COTDOC_TipoDocumento AND dbo.GBCODOP_CodigosOperacao.COSITU_Situacao = 'V' INNER JOIN
                         dbo.GBMVDP_MovimentosContasDepositosPrazo ON dbo.GBCODOP_CodigosOperacao.COCOPE_CodigoOperacao = dbo.GBMVDP_MovimentosContasDepositosPrazo.MPCOPE_CodigoOperacao
GO
/****** Object:  View [dbo].[VConsultaOperacoesCDP]    Script Date: 21/12/2018 16:25:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[VConsultaOperacoesCDP]
AS
SELECT        dbo.GBOPR_Operacoes.X1NOPR_NumeroOperacao, dbo.GBOPR_Operacoes.X1DTIN_DataInicioExecucao, dbo.VConsultaDocumentos_DadosMovimentoContaPrazo.ContaDoMovimentoPrazo, 
                         dbo.VConsultaDocumentos_DadosMovimentoContaPrazo.MPDMOV_DescritivoMovimento, dbo.VConsultaDocumentos_DadosMovimentoContaPrazo.MPVLR_ValorMovimento, 
                         dbo.VConsultaDocumentos_DadosMovimentoContaPrazo.MPMOED_Moeda, dbo.VConsultaDocumentos_DadosMovimentoContaPrazo.MPDATV_DataValor
FROM            dbo.GBOPR_Operacoes INNER JOIN
                         dbo.VConsultaDocumentos_DadosMovimentoContaPrazo ON dbo.GBOPR_Operacoes.X1NOPR_NumeroOperacao = dbo.VConsultaDocumentos_DadosMovimentoContaPrazo.MPNOPR_NumeroOperacao
GO
/****** Object:  View [dbo].[VConsultaDocumentos_DadosMovimentoContaOrdem]    Script Date: 21/12/2018 16:25:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[VConsultaDocumentos_DadosMovimentoContaOrdem]
AS
SELECT        dbo.GBMVDO_MovimentosContasDepositosOrdem.MVNCLI_NumeroCliente + dbo.GBMVDO_MovimentosContasDepositosOrdem.MVNATR_Natureza + dbo.GBMVDO_MovimentosContasDepositosOrdem.MVNSEQ_NumeroSequencial
                          AS ContaDoMovimentoOrdem, dbo.GBMVDO_MovimentosContasDepositosOrdem.MVDMOV_DescritivoMovimento, dbo.GBMVDO_MovimentosContasDepositosOrdem.MVVLR_ValorQueAfectaConta, 
                         dbo.GBMVDO_MovimentosContasDepositosOrdem.MVMOED_MoedaQueAfectaConta, dbo.GBMVDO_MovimentosContasDepositosOrdem.MVDATV_DataValor, 
                         dbo.GBMVDO_MovimentosContasDepositosOrdem.MVNOPR_NrOperacao, dbo.GBMVDO_MovimentosContasDepositosOrdem.MVUSER_LancadoPor, 
                         dbo.GBMVDO_MovimentosContasDepositosOrdem.MVDATL_DataLancamento, dbo.GBMVDO_MovimentosContasDepositosOrdem.MVCCB_ContaCcbMovimento, 
                         dbo.GBMVDO_MovimentosContasDepositosOrdem.MVDTCB_DataContabilistica, dbo.GBMVDO_MovimentosContasDepositosOrdem.MVAUTR_Autorizacao
FROM            dbo.GBDOC_Documentos INNER JOIN
                         dbo.GBCODOP_CodigosOperacao ON dbo.GBDOC_Documentos.DCTDOC_TipoDocumento = dbo.GBCODOP_CodigosOperacao.COTDOC_TipoDocumento AND dbo.GBCODOP_CodigosOperacao.COSITU_Situacao = 'V' INNER JOIN
                         dbo.GBMVDO_MovimentosContasDepositosOrdem ON dbo.GBCODOP_CodigosOperacao.COCOPE_CodigoOperacao = dbo.GBMVDO_MovimentosContasDepositosOrdem.MVCOPE_CodigoOperacao
GO
/****** Object:  View [dbo].[VConsultaOperacoesCDO]    Script Date: 21/12/2018 16:25:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[VConsultaOperacoesCDO]
AS
SELECT        dbo.GBOPR_Operacoes.X1NOPR_NumeroOperacao, dbo.GBOPR_Operacoes.X1DTIN_DataInicioExecucao, dbo.VConsultaDocumentos_DadosMovimentoContaOrdem.ContaDoMovimentoOrdem, 
                         dbo.VConsultaDocumentos_DadosMovimentoContaOrdem.MVDMOV_DescritivoMovimento, dbo.VConsultaDocumentos_DadosMovimentoContaOrdem.MVVLR_ValorQueAfectaConta, 
                         dbo.VConsultaDocumentos_DadosMovimentoContaOrdem.MVMOED_MoedaQueAfectaConta, dbo.VConsultaDocumentos_DadosMovimentoContaOrdem.MVDATV_DataValor
FROM            dbo.GBOPR_Operacoes INNER JOIN
                         dbo.VConsultaDocumentos_DadosMovimentoContaOrdem ON dbo.GBOPR_Operacoes.X1NOPR_NumeroOperacao = dbo.VConsultaDocumentos_DadosMovimentoContaOrdem.MVNOPR_NrOperacao
GO
/****** Object:  View [dbo].[VConsultaDocumentos_DadosMovimentoContaCaucinada]    Script Date: 21/12/2018 16:25:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[VConsultaDocumentos_DadosMovimentoContaCaucinada]
AS
SELECT        dbo.GBMVCC_MovimentosContasCaucionadas.MUNCLI_NumeroCliente + dbo.GBMVCC_MovimentosContasCaucionadas.MUNATR_Natureza + dbo.GBMVCC_MovimentosContasCaucionadas.MUNSEQ_NumeroSequencial AS ContaDoMovimentoCaucinada,
                          dbo.GBMVCC_MovimentosContasCaucionadas.MUDMOV_DescritivoMovimento, dbo.GBMVCC_MovimentosContasCaucionadas.MUVLR_ValorMovimento, dbo.GBMVCC_MovimentosContasCaucionadas.MUMOED_Moeda, 
                         dbo.GBMVCC_MovimentosContasCaucionadas.MUDATV_DataValor, dbo.GBMVCC_MovimentosContasCaucionadas.MUNOPR_NrOperacao, dbo.GBMVCC_MovimentosContasCaucionadas.MUUSER_LancadoPor, 
                         dbo.GBMVCC_MovimentosContasCaucionadas.MUDATL_DataLancamento, dbo.GBMVCC_MovimentosContasCaucionadas.MUCCB_ContaCcbMovimento, 
                         dbo.GBMVCC_MovimentosContasCaucionadas.MUDTCB_DataContabilistica, dbo.GBMVCC_MovimentosContasCaucionadas.MUAUTR_Autorizacao
FROM            dbo.GBDOC_Documentos INNER JOIN
                         dbo.GBCODOP_CodigosOperacao ON dbo.GBDOC_Documentos.DCTDOC_TipoDocumento = dbo.GBCODOP_CodigosOperacao.COTDOC_TipoDocumento AND dbo.GBCODOP_CodigosOperacao.COSITU_Situacao = 'V' INNER JOIN
                         dbo.GBMVCC_MovimentosContasCaucionadas ON dbo.GBMVCC_MovimentosContasCaucionadas.MUCOPE_CodigoOperacao = dbo.GBCODOP_CodigosOperacao.COCOPE_CodigoOperacao
GO
/****** Object:  View [dbo].[VConsultaOperacoesCCC]    Script Date: 21/12/2018 16:25:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[VConsultaOperacoesCCC]
AS
SELECT        dbo.GBOPR_Operacoes.X1NOPR_NumeroOperacao, dbo.GBOPR_Operacoes.X1DTIN_DataInicioExecucao, dbo.VConsultaDocumentos_DadosMovimentoContaCaucinada.ContaDoMovimentoCaucinada, 
                         dbo.VConsultaDocumentos_DadosMovimentoContaCaucinada.MUDMOV_DescritivoMovimento, dbo.VConsultaDocumentos_DadosMovimentoContaCaucinada.MUVLR_ValorMovimento, 
                         dbo.VConsultaDocumentos_DadosMovimentoContaCaucinada.MUMOED_Moeda, dbo.VConsultaDocumentos_DadosMovimentoContaCaucinada.MUDATV_DataValor
FROM            dbo.GBOPR_Operacoes INNER JOIN
                         dbo.VConsultaDocumentos_DadosMovimentoContaCaucinada ON dbo.GBOPR_Operacoes.X1NOPR_NumeroOperacao = dbo.VConsultaDocumentos_DadosMovimentoContaCaucinada.MUNOPR_NrOperacao
GO
/****** Object:  View [dbo].[VConsultaDocumentos_DadosMovimentoContaCredito]    Script Date: 21/12/2018 16:25:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[VConsultaDocumentos_DadosMovimentoContaCredito]
AS
SELECT        dbo.GBMVCR_MovimentosContasCredito.MCNCLI_NumeroCliente + dbo.GBMVCR_MovimentosContasCredito.MCNATR_Natureza + dbo.GBMVCR_MovimentosContasCredito.MCNSEQ_NumeroSequencial AS ContaDoMovimentoCredito,
                          dbo.GBMVCR_MovimentosContasCredito.MCDMOV_DescritivoMovimento, dbo.GBMVCR_MovimentosContasCredito.MCVLR_ValorMovimento, dbo.GBMVCR_MovimentosContasCredito.MCMOED_Moeda, 
                         dbo.GBMVCR_MovimentosContasCredito.MCDATV_DataValor, dbo.GBMVCR_MovimentosContasCredito.MCNOPR_NrOperacao, dbo.GBMVCR_MovimentosContasCredito.MCUSER_LancadoPor, 
                         dbo.GBMVCR_MovimentosContasCredito.MCDATL_DataLancamento, dbo.GBMVCR_MovimentosContasCredito.MCCCB_ContaCcbMovimento, dbo.GBMVCR_MovimentosContasCredito.MCDTCB_DataContabilistica, 
                         dbo.GBMVCR_MovimentosContasCredito.MCAUTR_Autorizacao
FROM            dbo.GBDOC_Documentos INNER JOIN
                         dbo.GBCODOP_CodigosOperacao ON dbo.GBDOC_Documentos.DCTDOC_TipoDocumento = dbo.GBCODOP_CodigosOperacao.COTDOC_TipoDocumento AND dbo.GBCODOP_CodigosOperacao.COSITU_Situacao = 'V' INNER JOIN
                         dbo.GBMVCR_MovimentosContasCredito ON dbo.GBMVCR_MovimentosContasCredito.MCCOPE_CodigoOperacao = dbo.GBCODOP_CodigosOperacao.COCOPE_CodigoOperacao
GO
/****** Object:  View [dbo].[VConsultaOperacoesCCR]    Script Date: 21/12/2018 16:25:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[VConsultaOperacoesCCR]
AS
SELECT        dbo.GBOPR_Operacoes.X1NOPR_NumeroOperacao, dbo.GBOPR_Operacoes.X1DTIN_DataInicioExecucao, dbo.VConsultaDocumentos_DadosMovimentoContaCredito.ContaDoMovimentoCredito, 
                         dbo.VConsultaDocumentos_DadosMovimentoContaCredito.MCDMOV_DescritivoMovimento, dbo.VConsultaDocumentos_DadosMovimentoContaCredito.MCVLR_ValorMovimento, 
                         dbo.VConsultaDocumentos_DadosMovimentoContaCredito.MCMOED_Moeda, dbo.VConsultaDocumentos_DadosMovimentoContaCredito.MCDATV_DataValor
FROM            dbo.GBOPR_Operacoes INNER JOIN
                         dbo.VConsultaDocumentos_DadosMovimentoContaCredito ON dbo.GBOPR_Operacoes.X1NOPR_NumeroOperacao = dbo.VConsultaDocumentos_DadosMovimentoContaCredito.MCNOPR_NrOperacao
GO
/****** Object:  View [dbo].[VConsultaDocumentos_DadosMovimentoContaContabilistica]    Script Date: 21/12/2018 16:25:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[VConsultaDocumentos_DadosMovimentoContaContabilistica]
AS
SELECT        dbo.GBMVCO_MovimentosContasContabilisticas.MRNCLI_NumeroCliente + dbo.GBMVCO_MovimentosContasContabilisticas.MRNATR_Natureza + dbo.GBMVCO_MovimentosContasContabilisticas.MRNSEQ_NumeroSequencial AS
                          ContaDoMovimentoContabilistica, dbo.GBMVCO_MovimentosContasContabilisticas.MRDMOV_DescritivoMovimento, dbo.GBMVCO_MovimentosContasContabilisticas.MRVLR_ValorMovimento, 
                         dbo.GBMVCO_MovimentosContasContabilisticas.MRMOED_Moeda, dbo.GBMVCO_MovimentosContasContabilisticas.MRNOPR_NrOperacao, dbo.GBMVCO_MovimentosContasContabilisticas.MRUSER_LancadoPor, 
                         dbo.GBMVCO_MovimentosContasContabilisticas.MRDATL_DataLancamento, dbo.GBMVCO_MovimentosContasContabilisticas.MRCCB_ContaContabilistica, 
                         dbo.GBMVCO_MovimentosContasContabilisticas.MRDTCB_DataContabilistica, dbo.GBMVCO_MovimentosContasContabilisticas.MRAUTR_Autorizacao
FROM            dbo.GBDOC_Documentos INNER JOIN
                         dbo.GBCODOP_CodigosOperacao ON dbo.GBDOC_Documentos.DCTDOC_TipoDocumento = dbo.GBCODOP_CodigosOperacao.COTDOC_TipoDocumento AND dbo.GBCODOP_CodigosOperacao.COSITU_Situacao = 'V' INNER JOIN
                         dbo.GBMVCO_MovimentosContasContabilisticas ON dbo.GBMVCO_MovimentosContasContabilisticas.MRCOPE_CodigoOperacao = dbo.GBCODOP_CodigosOperacao.COCOPE_CodigoOperacao
GO
/****** Object:  View [dbo].[VConsultaOperacoesCCO]    Script Date: 21/12/2018 16:25:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[VConsultaOperacoesCCO]
AS
SELECT        dbo.GBOPR_Operacoes.X1NOPR_NumeroOperacao, dbo.GBOPR_Operacoes.X1DTIN_DataInicioExecucao, dbo.VConsultaDocumentos_DadosMovimentoContaContabilistica.ContaDoMovimentoContabilistica, 
                         dbo.VConsultaDocumentos_DadosMovimentoContaContabilistica.MRDMOV_DescritivoMovimento, dbo.VConsultaDocumentos_DadosMovimentoContaContabilistica.MRVLR_ValorMovimento, 
                         dbo.VConsultaDocumentos_DadosMovimentoContaContabilistica.MRMOED_Moeda, dbo.VConsultaDocumentos_DadosMovimentoContaContabilistica.MRNOPR_NrOperacao, 
                         dbo.VConsultaDocumentos_DadosMovimentoContaContabilistica.MRDATL_DataLancamento
FROM            dbo.GBOPR_Operacoes INNER JOIN
                         dbo.VConsultaDocumentos_DadosMovimentoContaContabilistica ON dbo.GBOPR_Operacoes.X1NOPR_NumeroOperacao = dbo.VConsultaDocumentos_DadosMovimentoContaContabilistica.MRNOPR_NrOperacao
GO
/****** Object:  View [dbo].[VConsultaOperacoesCDPExtracto]    Script Date: 21/12/2018 16:25:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[VConsultaOperacoesCDPExtracto]
AS
SELECT        dbo.GBOPR_Operacoes.X1NOPR_NumeroOperacao, dbo.VConsultaDocumentos_DadosMovimentoContaPrazo.MPUSER_LancadoPor, dbo.GBOPR_Operacoes.X1DTIN_DataInicioExecucao, 
                         dbo.GBOPR_Operacoes.X1HORA_HoraInicioExecucao, dbo.VConsultaDocumentos_DadosMovimentoContaPrazo.ContaDoMovimentoPrazo, dbo.GBMVDP_MovimentosContasDepositosPrazo.MPNDOC_NumeroDocumento, 
                         dbo.VConsultaDocumentos_DadosMovimentoContaPrazo.MPDMOV_DescritivoMovimento, dbo.VConsultaDocumentos_DadosMovimentoContaPrazo.MPVLR_ValorMovimento, 
                         dbo.VConsultaDocumentos_DadosMovimentoContaPrazo.MPMOED_Moeda AS MoedaMovimentoDebito, dbo.VConsultaDocumentos_DadosMovimentoContaPrazo.MPDATV_DataValor, 
                         dbo.VConsultaDocumentos_DadosMovimentoContaPrazo.MPMOED_Moeda AS MoedaMovimentoCredito
FROM            dbo.GBOPR_Operacoes INNER JOIN
                         dbo.VConsultaDocumentos_DadosMovimentoContaPrazo ON dbo.GBOPR_Operacoes.X1NOPR_NumeroOperacao = dbo.VConsultaDocumentos_DadosMovimentoContaPrazo.MPNOPR_NumeroOperacao INNER JOIN
                         dbo.GBMVDP_MovimentosContasDepositosPrazo ON dbo.VConsultaDocumentos_DadosMovimentoContaPrazo.MPNOPR_NumeroOperacao = dbo.GBMVDP_MovimentosContasDepositosPrazo.MPNOPR_NumeroOperacao
GO
/****** Object:  View [dbo].[VConsultaOperacoesCDOExtracto]    Script Date: 21/12/2018 16:25:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[VConsultaOperacoesCDOExtracto]
AS
SELECT        dbo.GBOPR_Operacoes.X1NOPR_NumeroOperacao, dbo.GBOPR_Operacoes.X1DTIN_DataInicioExecucao, dbo.GBOPR_Operacoes.X1HORA_HoraInicioExecucao, 
                         dbo.VConsultaDocumentos_DadosMovimentoContaOrdem.ContaDoMovimentoOrdem, dbo.GBMVDO_MovimentosContasDepositosOrdem.MVNDOC_NumeroDocumento, 
                         dbo.VConsultaDocumentos_DadosMovimentoContaOrdem.MVDMOV_DescritivoMovimento, dbo.VConsultaDocumentos_DadosMovimentoContaOrdem.MVVLR_ValorQueAfectaConta, 
                         dbo.VConsultaDocumentos_DadosMovimentoContaOrdem.MVMOED_MoedaQueAfectaConta AS MoedaMovimentoDebito, dbo.VConsultaDocumentos_DadosMovimentoContaOrdem.MVDATV_DataValor, 
                         dbo.VConsultaDocumentos_DadosMovimentoContaOrdem.MVMOED_MoedaQueAfectaConta AS MoedaMovimentoCredito
FROM            dbo.VConsultaDocumentos_DadosMovimentoContaOrdem INNER JOIN
                         dbo.GBOPR_Operacoes ON dbo.VConsultaDocumentos_DadosMovimentoContaOrdem.MVNOPR_NrOperacao = dbo.GBOPR_Operacoes.X1NOPR_NumeroOperacao INNER JOIN
                         dbo.GBMVDO_MovimentosContasDepositosOrdem ON dbo.VConsultaDocumentos_DadosMovimentoContaOrdem.MVNOPR_NrOperacao = dbo.GBMVDO_MovimentosContasDepositosOrdem.MVNOPR_NrOperacao
GO
/****** Object:  View [dbo].[VConsultaOperacoesCCCExtracto]    Script Date: 21/12/2018 16:25:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[VConsultaOperacoesCCCExtracto]
AS
SELECT        dbo.GBOPR_Operacoes.X1NOPR_NumeroOperacao, dbo.GBOPR_Operacoes.X1HORA_HoraInicioExecucao, dbo.GBOPR_Operacoes.X1DTIN_DataInicioExecucao, 
                         dbo.VConsultaDocumentos_DadosMovimentoContaCaucinada.ContaDoMovimentoCaucinada, dbo.GBMVCC_MovimentosContasCaucionadas.MUNDOC_NumeroDocumento, 
                         dbo.VConsultaDocumentos_DadosMovimentoContaCaucinada.MUDMOV_DescritivoMovimento, dbo.VConsultaDocumentos_DadosMovimentoContaCaucinada.MUVLR_ValorMovimento, 
                         dbo.VConsultaDocumentos_DadosMovimentoContaCaucinada.MUMOED_Moeda AS MoedaMovimentoDebito, dbo.VConsultaDocumentos_DadosMovimentoContaCaucinada.MUDATV_DataValor, 
                         dbo.VConsultaDocumentos_DadosMovimentoContaCaucinada.MUMOED_Moeda AS MoedaMovimentoCredito
FROM            dbo.VConsultaDocumentos_DadosMovimentoContaCaucinada INNER JOIN
                         dbo.GBOPR_Operacoes ON dbo.VConsultaDocumentos_DadosMovimentoContaCaucinada.MUNOPR_NrOperacao = dbo.GBOPR_Operacoes.X1NOPR_NumeroOperacao INNER JOIN
                         dbo.GBMVCC_MovimentosContasCaucionadas ON dbo.VConsultaDocumentos_DadosMovimentoContaCaucinada.MUNOPR_NrOperacao = dbo.GBMVCC_MovimentosContasCaucionadas.MUNOPR_NrOperacao
GO
/****** Object:  View [dbo].[VConsultaOperacoesCCRExtracto]    Script Date: 21/12/2018 16:25:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[VConsultaOperacoesCCRExtracto]
AS
SELECT        dbo.GBOPR_Operacoes.X1NOPR_NumeroOperacao, dbo.GBOPR_Operacoes.X1HORA_HoraInicioExecucao, dbo.GBOPR_Operacoes.X1DTIN_DataInicioExecucao, 
                         dbo.VConsultaDocumentos_DadosMovimentoContaCredito.ContaDoMovimentoCredito, dbo.GBMVCR_MovimentosContasCredito.MCNDOC_NumeroDocumento, 
                         dbo.VConsultaDocumentos_DadosMovimentoContaCredito.MCDMOV_DescritivoMovimento, dbo.VConsultaDocumentos_DadosMovimentoContaCredito.MCVLR_ValorMovimento, 
                         dbo.VConsultaDocumentos_DadosMovimentoContaCredito.MCMOED_Moeda AS MoedaMovimentoDebito, dbo.VConsultaDocumentos_DadosMovimentoContaCredito.MCDATV_DataValor, 
                         dbo.VConsultaDocumentos_DadosMovimentoContaCredito.MCMOED_Moeda AS MoedaMovimentoCredito
FROM            dbo.VConsultaDocumentos_DadosMovimentoContaCredito INNER JOIN
                         dbo.GBOPR_Operacoes ON dbo.VConsultaDocumentos_DadosMovimentoContaCredito.MCNOPR_NrOperacao = dbo.GBOPR_Operacoes.X1NOPR_NumeroOperacao INNER JOIN
                         dbo.GBMVCR_MovimentosContasCredito ON dbo.VConsultaDocumentos_DadosMovimentoContaCredito.MCNOPR_NrOperacao = dbo.GBMVCR_MovimentosContasCredito.MCNOPR_NrOperacao
GO
/****** Object:  View [dbo].[VConsultaOperacoesCCOExtracto]    Script Date: 21/12/2018 16:25:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[VConsultaOperacoesCCOExtracto]
AS
SELECT        dbo.GBOPR_Operacoes.X1NOPR_NumeroOperacao, dbo.GBOPR_Operacoes.X1HORA_HoraInicioExecucao, dbo.GBOPR_Operacoes.X1DTIN_DataInicioExecucao, 
                         dbo.VConsultaDocumentos_DadosMovimentoContaContabilistica.ContaDoMovimentoContabilistica, dbo.GBMVCO_MovimentosContasContabilisticas.MRNDOC_NumeroDocumento, 
                         dbo.VConsultaDocumentos_DadosMovimentoContaContabilistica.MRDMOV_DescritivoMovimento, dbo.VConsultaDocumentos_DadosMovimentoContaContabilistica.MRVLR_ValorMovimento, 
                         dbo.VConsultaDocumentos_DadosMovimentoContaContabilistica.MRMOED_Moeda AS MoedaMovimentoDebito, dbo.VConsultaDocumentos_DadosMovimentoContaContabilistica.MRDTCB_DataContabilistica, 
                         dbo.VConsultaDocumentos_DadosMovimentoContaContabilistica.MRMOED_Moeda AS MoedaMovimentoCredito
FROM            dbo.VConsultaDocumentos_DadosMovimentoContaContabilistica INNER JOIN
                         dbo.GBOPR_Operacoes ON dbo.VConsultaDocumentos_DadosMovimentoContaContabilistica.MRNOPR_NrOperacao = dbo.GBOPR_Operacoes.X1NOPR_NumeroOperacao INNER JOIN
                         dbo.GBMVCO_MovimentosContasContabilisticas ON dbo.VConsultaDocumentos_DadosMovimentoContaContabilistica.MRNOPR_NrOperacao = dbo.GBMVCO_MovimentosContasContabilisticas.MRNOPR_NrOperacao
GO
/****** Object:  View [dbo].[VConsultaClientePorNomeEntidade]    Script Date: 21/12/2018 16:25:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[VConsultaClientePorNomeEntidade]
AS
SELECT        dbo.GBTIT_Entidade.TTNOME_NomeSemTitulo, dbo.GBTIT_Entidade.TTDNSC_DataNascimento, dbo.GBTIT_Entidade.TTNIF_NrIdentificacaoFiscal, dbo.GBCLI_Clientes.CLNCLI_NrCliente
FROM            dbo.GBLTIT_LigacaoClientesEntidades INNER JOIN
                         dbo.GBTIT_Entidade ON dbo.GBLTIT_LigacaoClientesEntidades.LTNTIT_NumeroEntidade = dbo.GBTIT_Entidade.TTNUMT_NrEntidade INNER JOIN
                         dbo.GBCLI_Clientes ON dbo.GBLTIT_LigacaoClientesEntidades.LTNCLI_NumeroCliente = dbo.GBCLI_Clientes.CLNCLI_NrCliente
GO
/****** Object:  View [dbo].[VConsultaClientePorNumeroCliente]    Script Date: 21/12/2018 16:25:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[VConsultaClientePorNumeroCliente]
AS
SELECT        dbo.GBCLI_Clientes.CLNCLI_NrCliente, dbo.GBCLI_Clientes.CLDTAB_DataAbertura, dbo.GBCLI_Clientes.CLTCLI_SegmentoCliente, dbo.GBCLI_Clientes.CLGERC_GestorCliente, 
                         dbo.GBCLI_Clientes.CLCNDM_CondicoesMovimentacao, dbo.GBCNDM_CondicoesMovimentacaoConta.ATDCND_Descritivo, dbo.GBCRES_CodigosResidencia.REDESC_Descritivo, 
                         dbo.GBCSTE_CodigosSectoriaisNaoResidentes.SEDESC_Descritivo, dbo.GBCSTR_CodigosSectoriaisResidentes.SRDESC_Descritivo, dbo.GBTCLI_SegmentoCliente.TCDESC_Descritivo, 
                         dbo.GBTIT_Entidade.TTNOME_NomeSemTitulo, dbo.GBTIT_Entidade.TTCRES_CodigoResidencia, dbo.GBTIT_Entidade.TTCST_CodigoSectorial, dbo.GBTIT_Entidade.TTTIPT_EmpresaOuParticular
FROM            dbo.GBLTIT_LigacaoClientesEntidades INNER JOIN
                         dbo.GBTIT_Entidade ON dbo.GBLTIT_LigacaoClientesEntidades.LTNTIT_NumeroEntidade = dbo.GBTIT_Entidade.TTNUMT_NrEntidade INNER JOIN
                         dbo.GBCLI_Clientes ON dbo.GBLTIT_LigacaoClientesEntidades.LTNCLI_NumeroCliente = dbo.GBCLI_Clientes.CLNCLI_NrCliente INNER JOIN
                         dbo.GBCNDM_CondicoesMovimentacaoConta ON dbo.GBCLI_Clientes.CLCNDM_CondicoesMovimentacao = dbo.GBCNDM_CondicoesMovimentacaoConta.ATCNDM_CondMovimentacao INNER JOIN
                         dbo.GBCRES_CodigosResidencia ON dbo.GBCRES_CodigosResidencia.RECRES_CodigoResidencia = dbo.GBTIT_Entidade.TTCRES_CodigoResidencia INNER JOIN
                         dbo.GBCSTE_CodigosSectoriaisNaoResidentes ON dbo.GBCSTE_CodigosSectoriaisNaoResidentes.SECST_CodigoSectorial = dbo.GBTIT_Entidade.TTCST_CodigoSectorial INNER JOIN
                         dbo.GBCSTR_CodigosSectoriaisResidentes ON dbo.GBCSTR_CodigosSectoriaisResidentes.SRCST_CodigoSectorial = dbo.GBTIT_Entidade.TTCST_CodigoSectorial INNER JOIN
                         dbo.GBTCLI_SegmentoCliente ON dbo.GBTCLI_SegmentoCliente.TCTIPO_Tipo = dbo.GBCLI_Clientes.CLTCLI_SegmentoCliente
GO
/****** Object:  View [dbo].[VConsultaDocumentos_DadosDocumento]    Script Date: 21/12/2018 16:25:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[VConsultaDocumentos_DadosDocumento]
AS
SELECT        dbo.GBDOC_Documentos.DCTDOC_TipoDocumento, dbo.GBDOC_Documentos.DCNDOC_Documento, dbo.GBCODOP_CodigosOperacao.CODEST_DescritivoTipoDoc, dbo.GBDOC_Documentos.DCSITU_SituacaoDocumento
FROM            dbo.GBCODOP_CodigosOperacao INNER JOIN
                         dbo.GBDOC_Documentos ON dbo.GBCODOP_CodigosOperacao.COTDOC_TipoDocumento = dbo.GBDOC_Documentos.DCTDOC_TipoDocumento
GO
/****** Object:  View [dbo].[VConsultaEntidadePorDadosEntidade]    Script Date: 21/12/2018 16:25:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[VConsultaEntidadePorDadosEntidade]
AS
SELECT        dbo.PACTP_ActividadeProfissional.PACDC_Descritivo, dbo.PESTC_EstadoCivil.EDCIV_Descritivo, dbo.PHBLT_HabilitacoesLiterarias.HBDC_Descritivo, dbo.PPAIS_Paises.ADPAI_DescricaoPais AS DescricaoPaisResidencia, 
                         dbo.PPAIS_Paises.ADPAI_DescricaoPais AS DescricaoNacionalidade, dbo.PPROF_Profissoes.PPRDESC_Descritivo, dbo.PTIDD_TiposIdentificacao.PTIDC_Descritivo, dbo.GBCRES_CodigosResidencia.REDESC_Descritivo, 
                         dbo.GBCSTE_CodigosSectoriaisNaoResidentes.SEDESC_Descritivo, dbo.GBCSTR_CodigosSectoriaisResidentes.SRDESC_Descritivo, dbo.GBTIT_Entidade.TTNOME_NomeSemTitulo, 
                         dbo.GBTIT_Entidade.TTNOMT_NomeEntidade, dbo.GBTIT_Entidade.TTTPEN_TipoEntidade, dbo.GBTIT_Entidade.TTNUMT_NrEntidade, dbo.GBTIT_Entidade.TTDNSC_DataNascimento, dbo.GBTIT_Entidade.TTSEXO_Sexo, 
                         dbo.GBTIT_Entidade.TTHABL_Habilitacoes, dbo.GBTIT_Entidade.TTNIDE_NrIdentificacao, dbo.GBTIT_Entidade.TTDTEI_DataEmissao, dbo.GBTIT_Entidade.GBTTDTVAL_DataValidadeDocumento, 
                         dbo.GBTIT_Entidade.TTLOCA_LocalEmissao, dbo.GBTIT_Entidade.TTNIF_NrIdentificacaoFiscal, dbo.GBTIT_Entidade.TTCRES_CodigoResidencia, dbo.GBTIT_Entidade.TTCST_CodigoSectorial, 
                         dbo.GBTIT_Entidade.TTPAIS_CodigoPais, dbo.GBTIT_Entidade.TTNAC_Nacionalidade, dbo.GBTIT_Entidade.TTNATU_Naturalidade, dbo.GBTIT_Entidade.TTECIV_EstadoCivil, dbo.GBTIT_Entidade.TTPAI_NomePai, 
                         dbo.GBTIT_Entidade.TTMAE_NomeMae, dbo.GBTIT_Entidade.TTACTP_ActividadeProfissional, dbo.GBTIT_Entidade.GBTTPROF_Profissao, dbo.GBTIT_Entidade.TTENTP_EntidadePatronal, 
                         dbo.GBTIT_Entidade.TTFUCA_FuncaoOuCargo, dbo.GBTPENT_TiposEntidades.NIDTPE_Descritivo, dbo.GBTIT_Entidade.TTRCAS_RegimeCasamento
FROM            dbo.GBTIT_Entidade INNER JOIN
                         dbo.GBCRES_CodigosResidencia ON dbo.GBTIT_Entidade.TTCRES_CodigoResidencia = dbo.GBCRES_CodigosResidencia.RECRES_CodigoResidencia INNER JOIN
                         dbo.GBCSTE_CodigosSectoriaisNaoResidentes ON dbo.GBTIT_Entidade.TTCST_CodigoSectorial = dbo.GBCSTE_CodigosSectoriaisNaoResidentes.SECST_CodigoSectorial INNER JOIN
                         dbo.GBCSTR_CodigosSectoriaisResidentes ON dbo.GBTIT_Entidade.TTCST_CodigoSectorial = dbo.GBCSTR_CodigosSectoriaisResidentes.SRCST_CodigoSectorial INNER JOIN
                         dbo.GBTPENT_TiposEntidades ON dbo.GBTIT_Entidade.TTTPEN_TipoEntidade = dbo.GBTPENT_TiposEntidades.NITPEN_TipoEntidade INNER JOIN
                         dbo.PACTP_ActividadeProfissional ON dbo.GBTIT_Entidade.TTACTP_ActividadeProfissional = dbo.PACTP_ActividadeProfissional.PACTV_Actividade INNER JOIN
                         dbo.PESTC_EstadoCivil ON dbo.GBTIT_Entidade.TTECIV_EstadoCivil = dbo.PESTC_EstadoCivil.EECIV_EstadoCivil INNER JOIN
                         dbo.PHBLT_HabilitacoesLiterarias ON dbo.GBTIT_Entidade.TTHABL_Habilitacoes = dbo.PHBLT_HabilitacoesLiterarias.PHBTP_Habilitacoes INNER JOIN
                         dbo.PPAIS_Paises ON dbo.GBTIT_Entidade.TTPAIS_CodigoPais = dbo.PPAIS_Paises.ACPAI_CodigoPais INNER JOIN
                         dbo.PPROF_Profissoes ON dbo.GBTIT_Entidade.GBTTPROF_Profissao = dbo.PPROF_Profissoes.PPRPROF_CodigoProfissao INNER JOIN
                         dbo.PREGC_RegimesCasamento ON dbo.GBTIT_Entidade.TTRCAS_RegimeCasamento = dbo.PREGC_RegimesCasamento.CRCAS_RegimeCasamento INNER JOIN
                         dbo.PTIDD_TiposIdentificacao ON dbo.GBTIT_Entidade.TTTIDE_TipoIdentificacao = dbo.PTIDD_TiposIdentificacao.PTITP_TipoIdentificacao
GO
/****** Object:  View [dbo].[VConsultaEntidadePorNome]    Script Date: 21/12/2018 16:25:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[VConsultaEntidadePorNome]
AS
SELECT        TTNOME_NomeSemTitulo, TTDNSC_DataNascimento, TTNIF_NrIdentificacaoFiscal
FROM            dbo.GBTIT_Entidade
GO
/****** Object:  View [dbo].[VConsultaMovimentosCCC]    Script Date: 21/12/2018 16:25:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[VConsultaMovimentosCCC]
AS
SELECT        dbo.GBCCC_ContasCaucionadas.CCNCLI_NrCliente, dbo.GBCCC_ContasCaucionadas.CCNATR_Natureza, dbo.GBCCC_ContasCaucionadas.CCNSEQ_NrSequencial, dbo.GBCCC_ContasCaucionadas.CCMOED_Moeda, 
                         dbo.GBTIT_Entidade.TTNOME_NomeSemTitulo, dbo.GBMVCC_MovimentosContasCaucionadas.MUDATL_DataLancamento, dbo.GBMVCC_MovimentosContasCaucionadas.MUDMOV_DescritivoMovimento, 
                         dbo.GBMVCC_MovimentosContasCaucionadas.MUVLR_ValorMovimento, dbo.GBMVCC_MovimentosContasCaucionadas.MUSALD_SaldoAposMovimento
FROM            dbo.GBMVCC_MovimentosContasCaucionadas INNER JOIN
                         dbo.GBCCC_ContasCaucionadas INNER JOIN
                         dbo.GBLTIT_LigacaoClientesEntidades INNER JOIN
                         dbo.GBTIT_Entidade ON dbo.GBLTIT_LigacaoClientesEntidades.LTNTIT_NumeroEntidade = dbo.GBTIT_Entidade.TTNUMT_NrEntidade ON 
                         dbo.GBCCC_ContasCaucionadas.CCNCLI_NrCliente = dbo.GBLTIT_LigacaoClientesEntidades.LTNCLI_NumeroCliente ON 
                         dbo.GBMVCC_MovimentosContasCaucionadas.MUNCLI_NumeroCliente = dbo.GBCCC_ContasCaucionadas.CCNCLI_NrCliente AND 
                         dbo.GBMVCC_MovimentosContasCaucionadas.MUNATR_Natureza = dbo.GBCCC_ContasCaucionadas.CCNATR_Natureza AND 
                         dbo.GBMVCC_MovimentosContasCaucionadas.MUNSEQ_NumeroSequencial = dbo.GBCCC_ContasCaucionadas.CCNSEQ_NrSequencial
GO
/****** Object:  View [dbo].[VConsultaMovimentosCCCExtracto]    Script Date: 21/12/2018 16:25:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[VConsultaMovimentosCCCExtracto]
AS
SELECT        dbo.GBMVCC_MovimentosContasCaucionadas.MUDATL_DataLancamento AS DataInicio, dbo.GBMVCC_MovimentosContasCaucionadas.MUDATL_DataLancamento AS DataFim, dbo.GBTIT_Entidade.TTNOME_NomeSemTitulo, 
                         dbo.GBMORD_Moradas.MOMORD_Morada, dbo.GBMORD_Moradas.MOMOR1_Morada, dbo.GBMORD_Moradas.MOCODX_CodigoPostalPais, dbo.GBCCC_ContasCaucionadas.CCNCLI_NrCliente, 
                         dbo.GBCCC_ContasCaucionadas.CCNATR_Natureza, dbo.GBCCC_ContasCaucionadas.CCNSEQ_NrSequencial, dbo.GBNATR_NaturezasContas.NTDESC_Descritivo, dbo.GBCLI_Clientes.CLGERC_GestorCliente, 
                         dbo.GBMVCC_MovimentosContasCaucionadas.MUSALD_SaldoAposMovimento AS SaldoAnterior, dbo.GBMVCC_MovimentosContasCaucionadas.MUDATL_DataLancamento AS Data, 
                         dbo.GBMVCC_MovimentosContasCaucionadas.MUTDOC_TipoDocumento, dbo.GBMVCC_MovimentosContasCaucionadas.MUNDOC_NumeroDocumento, 
                         dbo.GBMVCC_MovimentosContasCaucionadas.MUDMOV_DescritivoMovimento, dbo.GBMVCC_MovimentosContasCaucionadas.MUVLR_ValorMovimento, 
                         dbo.GBMVCC_MovimentosContasCaucionadas.MUSALD_SaldoAposMovimento AS SaldoAposMovimento, dbo.GBMVCC_MovimentosContasCaucionadas.MUSALD_SaldoAposMovimento AS SaldoConta
FROM            dbo.GBCCC_ContasCaucionadas INNER JOIN
                         dbo.GBMVCC_MovimentosContasCaucionadas ON dbo.GBCCC_ContasCaucionadas.CCNCLI_NrCliente = dbo.GBMVCC_MovimentosContasCaucionadas.MUNCLI_NumeroCliente AND 
                         dbo.GBCCC_ContasCaucionadas.CCNATR_Natureza = dbo.GBMVCC_MovimentosContasCaucionadas.MUNATR_Natureza AND 
                         dbo.GBCCC_ContasCaucionadas.CCNSEQ_NrSequencial = dbo.GBMVCC_MovimentosContasCaucionadas.MUNSEQ_NumeroSequencial INNER JOIN
                         dbo.GBLTIT_LigacaoClientesEntidades ON dbo.GBCCC_ContasCaucionadas.CCNCLI_NrCliente = dbo.GBLTIT_LigacaoClientesEntidades.LTNCLI_NumeroCliente INNER JOIN
                         dbo.GBCLI_Clientes ON dbo.GBLTIT_LigacaoClientesEntidades.LTNCLI_NumeroCliente = dbo.GBCLI_Clientes.CLNCLI_NrCliente INNER JOIN
                         dbo.GBTIT_Entidade ON dbo.GBLTIT_LigacaoClientesEntidades.LTNTIT_NumeroEntidade = dbo.GBTIT_Entidade.TTNUMT_NrEntidade INNER JOIN
                         dbo.GBMORD_Moradas ON dbo.GBCCC_ContasCaucionadas.CCNSEQ_NrSequencial = dbo.GBMORD_Moradas.MONSEQ_NumeroSequencial AND 
                         dbo.GBCCC_ContasCaucionadas.CCNCLI_NrCliente = dbo.GBMORD_Moradas.MONCLI_NumeroCliente AND dbo.GBCCC_ContasCaucionadas.CCNATR_Natureza = dbo.GBMORD_Moradas.MONATR_Natureza INNER JOIN
                         dbo.GBNATR_NaturezasContas ON dbo.GBCCC_ContasCaucionadas.CCNATR_Natureza = dbo.GBNATR_NaturezasContas.NTNATR_Natureza
GO
/****** Object:  View [dbo].[VConsultaMovimentosCCO]    Script Date: 21/12/2018 16:25:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[VConsultaMovimentosCCO]
AS
SELECT        dbo.GBCCO_ContasContabilisticas.CSBALC_BalcaoContaContab, dbo.GBCCO_ContasContabilisticas.CSCCB_ContaContabilistica, dbo.GBCCO_ContasContabilisticas.CSMOED_Moeda, 
                         dbo.GBCCO_ContasContabilisticas.CSOBS_Observacoes, dbo.GBMVCO_MovimentosContasContabilisticas.MRDATL_DataLancamento, dbo.GBMVCO_MovimentosContasContabilisticas.MRDMOV_DescritivoMovimento, 
                         dbo.GBMVCO_MovimentosContasContabilisticas.MRVLR_ValorMovimento, dbo.GBMVCO_MovimentosContasContabilisticas.MRSALD_SaldoAposMovimento
FROM            dbo.GBCCO_ContasContabilisticas INNER JOIN
                         dbo.GBMVCO_MovimentosContasContabilisticas ON dbo.GBCCO_ContasContabilisticas.CSCCB_ContaContabilistica = dbo.GBMVCO_MovimentosContasContabilisticas.MRCCB_ContaContabilistica AND 
                         dbo.GBCCO_ContasContabilisticas.CSNCLI_NrCliente = dbo.GBMVCO_MovimentosContasContabilisticas.MRNCLI_NumeroCliente AND 
                         dbo.GBCCO_ContasContabilisticas.CSNATR_Natureza = dbo.GBMVCO_MovimentosContasContabilisticas.MRNATR_Natureza AND 
                         dbo.GBCCO_ContasContabilisticas.CSNSEQ_NrSequencial = dbo.GBMVCO_MovimentosContasContabilisticas.MRNSEQ_NumeroSequencial
GO
/****** Object:  View [dbo].[VConsultaMovimentosCCOExtracto]    Script Date: 21/12/2018 16:25:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[VConsultaMovimentosCCOExtracto]
AS
SELECT        dbo.GBMVCO_MovimentosContasContabilisticas.MRDATL_DataLancamento AS DataInicio, dbo.GBMVCO_MovimentosContasContabilisticas.MRDATL_DataLancamento AS DataFim, 
                         dbo.GBCCO_ContasContabilisticas.CSBALC_BalcaoContaContab, dbo.GBCCO_ContasContabilisticas.CSCCB_ContaContabilistica, dbo.GBCCO_ContasContabilisticas.CSMOED_Moeda, 
                         dbo.GBCCO_ContasContabilisticas.CSOBS_Observacoes, dbo.GBMVCO_MovimentosContasContabilisticas.MRSALD_SaldoAposMovimento AS SaldoAnterior, 
                         dbo.GBMVCO_MovimentosContasContabilisticas.MRDATL_DataLancamento AS Data, dbo.GBMVCO_MovimentosContasContabilisticas.MRTDOC_TipoDocumento, 
                         dbo.GBMVCO_MovimentosContasContabilisticas.MRNDOC_NumeroDocumento, dbo.GBMVCO_MovimentosContasContabilisticas.MRDMOV_DescritivoMovimento, 
                         dbo.GBMVCO_MovimentosContasContabilisticas.MRVLR_ValorMovimento, dbo.GBMVCO_MovimentosContasContabilisticas.MRSALD_SaldoAposMovimento AS SaldoAposMovimento, 
                         dbo.GBMVCO_MovimentosContasContabilisticas.MRSALD_SaldoAposMovimento AS SaldoConta
FROM            dbo.GBCCO_ContasContabilisticas INNER JOIN
                         dbo.GBMVCO_MovimentosContasContabilisticas ON dbo.GBCCO_ContasContabilisticas.CSCCB_ContaContabilistica = dbo.GBMVCO_MovimentosContasContabilisticas.MRCCB_ContaContabilistica AND 
                         dbo.GBCCO_ContasContabilisticas.CSNCLI_NrCliente = dbo.GBMVCO_MovimentosContasContabilisticas.MRNCLI_NumeroCliente AND 
                         dbo.GBCCO_ContasContabilisticas.CSNATR_Natureza = dbo.GBMVCO_MovimentosContasContabilisticas.MRNATR_Natureza AND 
                         dbo.GBCCO_ContasContabilisticas.CSNSEQ_NrSequencial = dbo.GBMVCO_MovimentosContasContabilisticas.MRNSEQ_NumeroSequencial
GO
/****** Object:  View [dbo].[VConsultaMovimentosCCR]    Script Date: 21/12/2018 16:25:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[VConsultaMovimentosCCR]
AS
SELECT        dbo.GBCCR_ContasCredito.CRNCLI_NrCliente, dbo.GBCCR_ContasCredito.CRNATR_Natureza, dbo.GBCCR_ContasCredito.CRNSEQ_NrSequencial, dbo.GBCCR_ContasCredito.CRMOED_Moeda, 
                         dbo.GBTIT_Entidade.TTNOME_NomeSemTitulo, dbo.GBMVCR_MovimentosContasCredito.MCDATL_DataLancamento, dbo.GBMVCR_MovimentosContasCredito.MCDMOV_DescritivoMovimento, 
                         dbo.GBMVCR_MovimentosContasCredito.MCVLR_ValorMovimento, dbo.GBMVCR_MovimentosContasCredito.MCSALD_SaldoAposMovimento
FROM            dbo.GBCCR_ContasCredito INNER JOIN
                         dbo.GBMVCR_MovimentosContasCredito ON dbo.GBCCR_ContasCredito.CRNCLI_NrCliente = dbo.GBMVCR_MovimentosContasCredito.MCNCLI_NumeroCliente INNER JOIN
                         dbo.GBLTIT_LigacaoClientesEntidades INNER JOIN
                         dbo.GBCLI_Clientes ON dbo.GBLTIT_LigacaoClientesEntidades.LTNCLI_NumeroCliente = dbo.GBCLI_Clientes.CLNCLI_NrCliente INNER JOIN
                         dbo.GBTIT_Entidade ON dbo.GBLTIT_LigacaoClientesEntidades.LTNTIT_NumeroEntidade = dbo.GBTIT_Entidade.TTNUMT_NrEntidade ON 
                         dbo.GBCCR_ContasCredito.CRNCLI_NrCliente = dbo.GBLTIT_LigacaoClientesEntidades.LTNCLI_NumeroCliente
GO
/****** Object:  View [dbo].[VConsultaMovimentosCCRExtracto]    Script Date: 21/12/2018 16:25:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[VConsultaMovimentosCCRExtracto]
AS
SELECT        dbo.GBMVCR_MovimentosContasCredito.MCDATL_DataLancamento AS DataInicio, dbo.GBMVCR_MovimentosContasCredito.MCDATL_DataLancamento AS DataFim, dbo.GBTIT_Entidade.TTNOME_NomeSemTitulo, 
                         dbo.GBMORD_Moradas.MOMORD_Morada, dbo.GBMORD_Moradas.MOMOR1_Morada, dbo.GBMORD_Moradas.MOCODX_CodigoPostalPais, dbo.GBCCR_ContasCredito.CRNCLI_NrCliente, 
                         dbo.GBCCR_ContasCredito.CRNATR_Natureza, dbo.GBCCR_ContasCredito.CRNSEQ_NrSequencial, dbo.GBCCR_ContasCredito.CRMOED_Moeda, dbo.GBNATR_NaturezasContas.NTDESC_Descritivo, 
                         dbo.GBCLI_Clientes.CLGERC_GestorCliente, dbo.GBMVCR_MovimentosContasCredito.MCSALD_SaldoAposMovimento AS SaldoAnterior, dbo.GBMVCR_MovimentosContasCredito.MCDATL_DataLancamento AS Data, 
                         dbo.GBMVCR_MovimentosContasCredito.MCTDOC_TipoDocumento, dbo.GBMVCR_MovimentosContasCredito.MCNDOC_NumeroDocumento, dbo.GBMVCR_MovimentosContasCredito.MCDMOV_DescritivoMovimento, 
                         dbo.GBMVCR_MovimentosContasCredito.MCVLR_ValorMovimento, dbo.GBMVCR_MovimentosContasCredito.MCSALD_SaldoAposMovimento AS SaldoAposMovimento, 
                         dbo.GBMVCR_MovimentosContasCredito.MCSALD_SaldoAposMovimento AS SaldoConta
FROM            dbo.GBTIT_Entidade INNER JOIN
                         dbo.GBLTIT_LigacaoClientesEntidades ON dbo.GBTIT_Entidade.TTNUMT_NrEntidade = dbo.GBLTIT_LigacaoClientesEntidades.LTNTIT_NumeroEntidade INNER JOIN
                         dbo.GBCLI_Clientes ON dbo.GBLTIT_LigacaoClientesEntidades.LTNCLI_NumeroCliente = dbo.GBCLI_Clientes.CLNCLI_NrCliente INNER JOIN
                         dbo.GBCCR_ContasCredito INNER JOIN
                         dbo.GBMVCR_MovimentosContasCredito ON dbo.GBCCR_ContasCredito.CRNCLI_NrCliente = dbo.GBMVCR_MovimentosContasCredito.MCNCLI_NumeroCliente AND 
                         dbo.GBCCR_ContasCredito.CRNATR_Natureza = dbo.GBMVCR_MovimentosContasCredito.MCNATR_Natureza AND 
                         dbo.GBCCR_ContasCredito.CRNSEQ_NrSequencial = dbo.GBMVCR_MovimentosContasCredito.MCNSEQ_NumeroSequencial INNER JOIN
                         dbo.GBMORD_Moradas ON dbo.GBCCR_ContasCredito.CRNCLI_NrCliente = dbo.GBMORD_Moradas.MONCLI_NumeroCliente INNER JOIN
                         dbo.GBNATR_NaturezasContas ON dbo.GBCCR_ContasCredito.CRNATR_Natureza = dbo.GBNATR_NaturezasContas.NTNATR_Natureza ON dbo.GBCLI_Clientes.CLNCLI_NrCliente = dbo.GBCCR_ContasCredito.CRNCLI_NrCliente
GO
/****** Object:  View [dbo].[VConsultaMovimentosCDO]    Script Date: 21/12/2018 16:25:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[VConsultaMovimentosCDO]
AS
SELECT        dbo.GBCDO_ContasDepositosOrdem.DONCLI_NrCliente, dbo.GBCDO_ContasDepositosOrdem.DONATR_Natureza, dbo.GBCDO_ContasDepositosOrdem.DONSEQ_NrSequencial, 
                         dbo.GBCDO_ContasDepositosOrdem.DOMOED_Moeda, dbo.GBTIT_Entidade.TTNOME_NomeSemTitulo, dbo.GBMVDO_MovimentosContasDepositosOrdem.MVDATL_DataLancamento, 
                         dbo.GBMVDO_MovimentosContasDepositosOrdem.MVDMOV_DescritivoMovimento, dbo.GBMVDO_MovimentosContasDepositosOrdem.MVVLR_ValorQueAfectaConta, 
                         dbo.GBMVDO_MovimentosContasDepositosOrdem.MVSALD_SaldoAposMovimento
FROM            dbo.GBMVDO_MovimentosContasDepositosOrdem INNER JOIN
                         dbo.GBCDO_ContasDepositosOrdem INNER JOIN
                         dbo.GBLTIT_LigacaoClientesEntidades INNER JOIN
                         dbo.GBTIT_Entidade ON dbo.GBLTIT_LigacaoClientesEntidades.LTNTIT_NumeroEntidade = dbo.GBTIT_Entidade.TTNUMT_NrEntidade ON 
                         dbo.GBCDO_ContasDepositosOrdem.DONCLI_NrCliente = dbo.GBLTIT_LigacaoClientesEntidades.LTNCLI_NumeroCliente ON 
                         dbo.GBMVDO_MovimentosContasDepositosOrdem.MVNCLI_NumeroCliente = dbo.GBCDO_ContasDepositosOrdem.DONCLI_NrCliente AND 
                         dbo.GBMVDO_MovimentosContasDepositosOrdem.MVNATR_Natureza = dbo.GBCDO_ContasDepositosOrdem.DONATR_Natureza AND 
                         dbo.GBMVDO_MovimentosContasDepositosOrdem.MVNSEQ_NumeroSequencial = dbo.GBCDO_ContasDepositosOrdem.DONSEQ_NrSequencial
GO
/****** Object:  View [dbo].[VConsultaMovimentosCDOExtracto]    Script Date: 21/12/2018 16:25:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[VConsultaMovimentosCDOExtracto]
AS
SELECT        dbo.GBMVDO_MovimentosContasDepositosOrdem.MVDATL_DataLancamento AS DataInicio, dbo.GBMVDO_MovimentosContasDepositosOrdem.MVDATL_DataLancamento AS DataFim, 
                         dbo.GBTIT_Entidade.TTNOME_NomeSemTitulo, dbo.GBMORD_Moradas.MOMORD_Morada, dbo.GBMORD_Moradas.MOMOR1_Morada, dbo.GBMORD_Moradas.MOCODX_CodigoPostalPais, 
                         dbo.GBCDO_ContasDepositosOrdem.DONCLI_NrCliente, dbo.GBCDO_ContasDepositosOrdem.DONATR_Natureza, dbo.GBCDO_ContasDepositosOrdem.DONSEQ_NrSequencial, 
                         dbo.GBCDO_ContasDepositosOrdem.DOMOED_Moeda, dbo.GBCLI_Clientes.CLGERC_GestorCliente, dbo.GBMVDO_MovimentosContasDepositosOrdem.MVSALD_SaldoAposMovimento AS SaldoAnterior, 
                         dbo.GBMVDO_MovimentosContasDepositosOrdem.MVDATL_DataLancamento AS Data, dbo.GBMVDO_MovimentosContasDepositosOrdem.MVTDOC_TipoDocumento, 
                         dbo.GBMVDO_MovimentosContasDepositosOrdem.MVNDOC_NumeroDocumento, dbo.GBMVDO_MovimentosContasDepositosOrdem.MVVLR_ValorQueAfectaConta, 
                         dbo.GBMVDO_MovimentosContasDepositosOrdem.MVSALD_SaldoAposMovimento AS SaldoAposMovimento, dbo.GBMVDO_MovimentosContasDepositosOrdem.MVSALD_SaldoAposMovimento AS SaldoConta
FROM            dbo.GBMORD_Moradas INNER JOIN
                         dbo.GBLTIT_LigacaoClientesEntidades INNER JOIN
                         dbo.GBCLI_Clientes ON dbo.GBLTIT_LigacaoClientesEntidades.LTNCLI_NumeroCliente = dbo.GBCLI_Clientes.CLNCLI_NrCliente INNER JOIN
                         dbo.GBTIT_Entidade ON dbo.GBLTIT_LigacaoClientesEntidades.LTNTIT_NumeroEntidade = dbo.GBTIT_Entidade.TTNUMT_NrEntidade INNER JOIN
                         dbo.GBCDO_ContasDepositosOrdem INNER JOIN
                         dbo.GBMVDO_MovimentosContasDepositosOrdem ON dbo.GBCDO_ContasDepositosOrdem.DONCLI_NrCliente = dbo.GBMVDO_MovimentosContasDepositosOrdem.MVNCLI_NumeroCliente AND 
                         dbo.GBCDO_ContasDepositosOrdem.DONATR_Natureza = dbo.GBMVDO_MovimentosContasDepositosOrdem.MVNATR_Natureza AND 
                         dbo.GBCDO_ContasDepositosOrdem.DONSEQ_NrSequencial = dbo.GBMVDO_MovimentosContasDepositosOrdem.MVNSEQ_NumeroSequencial ON 
                         dbo.GBCLI_Clientes.CLNCLI_NrCliente = dbo.GBCDO_ContasDepositosOrdem.DONCLI_NrCliente ON dbo.GBMORD_Moradas.MONCLI_NumeroCliente = dbo.GBCDO_ContasDepositosOrdem.DONCLI_NrCliente
GO
/****** Object:  View [dbo].[VConsultaMovimentosCDP]    Script Date: 21/12/2018 16:25:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[VConsultaMovimentosCDP]
AS
SELECT        dbo.GBCDP_ContasDepositosPrazo.DPNCLI_NrCliente, dbo.GBCDP_ContasDepositosPrazo.DPNATR_Natureza, dbo.GBCDP_ContasDepositosPrazo.DPNSEQ_NrSequencial, 
                         dbo.GBCDP_ContasDepositosPrazo.DPMOED_Moeda, dbo.GBTIT_Entidade.TTNOME_NomeSemTitulo, dbo.GBMVDP_MovimentosContasDepositosPrazo.MPDATL_DataLancamento, 
                         dbo.GBMVDP_MovimentosContasDepositosPrazo.MPDMOV_DescritivoMovimento, dbo.GBMVDP_MovimentosContasDepositosPrazo.MPVLR_ValorMovimento, 
                         dbo.GBMVDP_MovimentosContasDepositosPrazo.MPSALD_SaldoAposMovimento
FROM            dbo.GBCDP_ContasDepositosPrazo INNER JOIN
                         dbo.GBLTIT_LigacaoClientesEntidades INNER JOIN
                         dbo.GBCLI_Clientes ON dbo.GBLTIT_LigacaoClientesEntidades.LTNCLI_NumeroCliente = dbo.GBCLI_Clientes.CLNCLI_NrCliente INNER JOIN
                         dbo.GBTIT_Entidade ON dbo.GBLTIT_LigacaoClientesEntidades.LTNTIT_NumeroEntidade = dbo.GBTIT_Entidade.TTNUMT_NrEntidade ON 
                         dbo.GBCDP_ContasDepositosPrazo.DPNCLI_NrCliente = dbo.GBCLI_Clientes.CLNCLI_NrCliente INNER JOIN
                         dbo.GBMVDP_MovimentosContasDepositosPrazo ON dbo.GBCDP_ContasDepositosPrazo.DPNCLI_NrCliente = dbo.GBMVDP_MovimentosContasDepositosPrazo.MPNCLI_NumeroCliente AND 
                         dbo.GBCDP_ContasDepositosPrazo.DPNATR_Natureza = dbo.GBMVDP_MovimentosContasDepositosPrazo.MPNATR_Natureza AND 
                         dbo.GBCDP_ContasDepositosPrazo.DPNSEQ_NrSequencial = dbo.GBMVDP_MovimentosContasDepositosPrazo.MPNSEQ_NumeroSequencial
GO
/****** Object:  View [dbo].[VConsultaMovimentosCDPExtracto]    Script Date: 21/12/2018 16:25:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[VConsultaMovimentosCDPExtracto]
AS
SELECT        dbo.GBMVDP_MovimentosContasDepositosPrazo.MPDATL_DataLancamento AS DataInicio, dbo.GBMVDP_MovimentosContasDepositosPrazo.MPDATL_DataLancamento AS DataFim, 
                         dbo.GBTIT_Entidade.TTNOME_NomeSemTitulo, dbo.GBMORD_Moradas.MOMORD_Morada, dbo.GBMORD_Moradas.MOMOR1_Morada, dbo.GBMORD_Moradas.MOCODX_CodigoPostalPais, 
                         dbo.GBCDP_ContasDepositosPrazo.DPNCLI_NrCliente, dbo.GBCDP_ContasDepositosPrazo.DPNATR_Natureza, dbo.GBCDP_ContasDepositosPrazo.DPNSEQ_NrSequencial, 
                         dbo.GBCDP_ContasDepositosPrazo.DPMOED_Moeda, dbo.GBCDP_ContasDepositosPrazo.DPNDIA_NrDias, dbo.GBCDP_ContasDepositosPrazo.DPTXJ_TaxaJuro, dbo.GBCLI_Clientes.CLGERC_GestorCliente, 
                         dbo.GBMVDP_MovimentosContasDepositosPrazo.MPSALD_SaldoAposMovimento AS SaldoAnterior, dbo.GBMVDP_MovimentosContasDepositosPrazo.MPDATL_DataLancamento AS Data, 
                         dbo.GBMVDP_MovimentosContasDepositosPrazo.MPTDOC_TipoDocumento, dbo.GBMVDP_MovimentosContasDepositosPrazo.MPDMOV_DescritivoMovimento, 
                         dbo.GBMVDP_MovimentosContasDepositosPrazo.MPVLR_ValorMovimento, dbo.GBMVDP_MovimentosContasDepositosPrazo.MPSALD_SaldoAposMovimento AS SaldoAposMovimento, 
                         dbo.GBMVDP_MovimentosContasDepositosPrazo.MPSALD_SaldoAposMovimento AS SaldoConta
FROM            dbo.GBMORD_Moradas INNER JOIN
                         dbo.GBLTIT_LigacaoClientesEntidades INNER JOIN
                         dbo.GBCLI_Clientes ON dbo.GBLTIT_LigacaoClientesEntidades.LTNCLI_NumeroCliente = dbo.GBCLI_Clientes.CLNCLI_NrCliente INNER JOIN
                         dbo.GBTIT_Entidade ON dbo.GBLTIT_LigacaoClientesEntidades.LTNTIT_NumeroEntidade = dbo.GBTIT_Entidade.TTNUMT_NrEntidade INNER JOIN
                         dbo.GBCDP_ContasDepositosPrazo INNER JOIN
                         dbo.GBMVDP_MovimentosContasDepositosPrazo ON dbo.GBCDP_ContasDepositosPrazo.DPNCLI_NrCliente = dbo.GBMVDP_MovimentosContasDepositosPrazo.MPNCLI_NumeroCliente AND 
                         dbo.GBCDP_ContasDepositosPrazo.DPNATR_Natureza = dbo.GBMVDP_MovimentosContasDepositosPrazo.MPNATR_Natureza AND 
                         dbo.GBCDP_ContasDepositosPrazo.DPNSEQ_NrSequencial = dbo.GBMVDP_MovimentosContasDepositosPrazo.MPNSEQ_NumeroSequencial ON 
                         dbo.GBCLI_Clientes.CLNCLI_NrCliente = dbo.GBCDP_ContasDepositosPrazo.DPNCLI_NrCliente ON dbo.GBMORD_Moradas.MONCLI_NumeroCliente = dbo.GBCDP_ContasDepositosPrazo.DPNCLI_NrCliente
GO
/****** Object:  View [dbo].[VConsultaRelacaoClienteEntidades]    Script Date: 21/12/2018 16:25:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[VConsultaRelacaoClienteEntidades]
AS
SELECT        dbo.GBCLI_Clientes.CLNCLI_NrCliente, dbo.GBCLI_Clientes.CLDTAB_DataAbertura, dbo.GBCLI_Clientes.CLGERC_GestorCliente, dbo.GBTIT_Entidade.TTTIPT_EmpresaOuParticular, 
                         dbo.GBCNDM_CondicoesMovimentacaoConta.ATDCND_Descritivo, dbo.GBTIT_Entidade.TTNOME_NomeSemTitulo, dbo.GBLTIT_LigacaoClientesEntidades.LTNTIT_NumeroEntidade, 
                         dbo.GBLTIT_LigacaoClientesEntidades.LTRCLI_RelacaoCliente, dbo.GBTRCLI_TiposRelacoesEntidadesClientes.RTDESC_Descritivo
FROM            dbo.GBCLI_Clientes INNER JOIN
                         dbo.GBLTIT_LigacaoClientesEntidades ON dbo.GBCLI_Clientes.CLNCLI_NrCliente = dbo.GBLTIT_LigacaoClientesEntidades.LTNCLI_NumeroCliente INNER JOIN
                         dbo.GBTIT_Entidade ON dbo.GBLTIT_LigacaoClientesEntidades.LTNTIT_NumeroEntidade = dbo.GBTIT_Entidade.TTNUMT_NrEntidade INNER JOIN
                         dbo.GBTRCLI_TiposRelacoesEntidadesClientes ON dbo.GBLTIT_LigacaoClientesEntidades.LTRCLI_RelacaoCliente = dbo.GBTRCLI_TiposRelacoesEntidadesClientes.RTRCLI_RelacaoComCliente AND 
                         dbo.GBTRCLI_TiposRelacoesEntidadesClientes.RTSITU_Situacao = 'V' INNER JOIN
                         dbo.GBCNDM_CondicoesMovimentacaoConta ON dbo.GBCLI_Clientes.CLCNDM_CondicoesMovimentacao = dbo.GBCNDM_CondicoesMovimentacaoConta.ATCNDM_CondMovimentacao
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[61] 4[20] 2[10] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "GBLTIT_LigacaoClientesEntidades"
            Begin Extent = 
               Top = 13
               Left = 49
               Bottom = 266
               Right = 315
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "GBCLI_Clientes"
            Begin Extent = 
               Top = 11
               Left = 363
               Bottom = 261
               Right = 645
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "GBTIT_Entidade"
            Begin Extent = 
               Top = 19
               Left = 686
               Bottom = 272
               Right = 1058
            End
            DisplayFlags = 280
            TopColumn = 2
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'VConsultaClientePorNomeEntidade'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'VConsultaClientePorNomeEntidade'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[73] 4[6] 2[17] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "GBCLI_Clientes"
            Begin Extent = 
               Top = 10
               Left = 28
               Bottom = 140
               Right = 310
            End
            DisplayFlags = 280
            TopColumn = 4
         End
         Begin Table = "GBCNDM_CondicoesMovimentacaoConta"
            Begin Extent = 
               Top = 209
               Left = 4
               Bottom = 317
               Right = 258
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "GBCRES_CodigosResidencia"
            Begin Extent = 
               Top = 367
               Left = 1250
               Bottom = 463
               Right = 1479
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "GBCSTE_CodigosSectoriaisNaoResidentes"
            Begin Extent = 
               Top = 318
               Left = 700
               Bottom = 448
               Right = 942
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "GBCSTR_CodigosSectoriaisResidentes"
            Begin Extent = 
               Top = 172
               Left = 673
               Bottom = 302
               Right = 916
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "GBLTIT_LigacaoClientesEntidades"
            Begin Extent = 
               Top = 7
               Left = 685
               Bottom = 137
               Right = 951
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "GBTCLI_SegmentoCliente"
            Begin Extent = 
          ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'VConsultaClientePorNumeroCliente'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane2', @value=N'     Top = 135
               Left = 342
               Bottom = 248
               Right = 605
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "GBTIT_Entidade"
            Begin Extent = 
               Top = 163
               Left = 1070
               Bottom = 293
               Right = 1442
            End
            DisplayFlags = 280
            TopColumn = 17
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'VConsultaClientePorNumeroCliente'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=2 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'VConsultaClientePorNumeroCliente'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[20] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "GBCODOP_CodigosOperacao"
            Begin Extent = 
               Top = 34
               Left = 710
               Bottom = 247
               Right = 987
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "GBDOC_Documentos"
            Begin Extent = 
               Top = 42
               Left = 346
               Bottom = 223
               Right = 588
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
      Begin ColumnWidths = 9
         Width = 284
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'VConsultaDocumentos_DadosDocumento'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'VConsultaDocumentos_DadosDocumento'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[20] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "GBDOC_Documentos"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 136
               Right = 280
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "GBCODOP_CodigosOperacao"
            Begin Extent = 
               Top = 138
               Left = 38
               Bottom = 268
               Right = 315
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "GBMVCC_MovimentosContasCaucionadas"
            Begin Extent = 
               Top = 270
               Left = 38
               Bottom = 400
               Right = 300
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'VConsultaDocumentos_DadosMovimentoContaCaucinada'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'VConsultaDocumentos_DadosMovimentoContaCaucinada'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[20] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = -288
         Left = 0
      End
      Begin Tables = 
         Begin Table = "GBDOC_Documentos"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 136
               Right = 280
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "GBCODOP_CodigosOperacao"
            Begin Extent = 
               Top = 138
               Left = 38
               Bottom = 268
               Right = 315
            End
            DisplayFlags = 280
            TopColumn = 47
         End
         Begin Table = "GBMVCO_MovimentosContasContabilisticas"
            Begin Extent = 
               Top = 270
               Left = 38
               Bottom = 400
               Right = 308
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'VConsultaDocumentos_DadosMovimentoContaContabilistica'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'VConsultaDocumentos_DadosMovimentoContaContabilistica'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[20] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "GBDOC_Documentos"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 136
               Right = 280
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "GBCODOP_CodigosOperacao"
            Begin Extent = 
               Top = 138
               Left = 38
               Bottom = 268
               Right = 315
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "GBMVCR_MovimentosContasCredito"
            Begin Extent = 
               Top = 270
               Left = 38
               Bottom = 400
               Right = 300
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'VConsultaDocumentos_DadosMovimentoContaCredito'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'VConsultaDocumentos_DadosMovimentoContaCredito'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[20] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "GBDOC_Documentos"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 136
               Right = 280
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "GBCODOP_CodigosOperacao"
            Begin Extent = 
               Top = 138
               Left = 38
               Bottom = 268
               Right = 315
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "GBMVDO_MovimentosContasDepositosOrdem"
            Begin Extent = 
               Top = 270
               Left = 38
               Bottom = 400
               Right = 309
            End
            DisplayFlags = 280
            TopColumn = 34
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'VConsultaDocumentos_DadosMovimentoContaOrdem'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'VConsultaDocumentos_DadosMovimentoContaOrdem'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[20] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "GBDOC_Documentos"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 136
               Right = 280
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "GBCODOP_CodigosOperacao"
            Begin Extent = 
               Top = 138
               Left = 38
               Bottom = 268
               Right = 315
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "GBMVDP_MovimentosContasDepositosPrazo"
            Begin Extent = 
               Top = 270
               Left = 38
               Bottom = 400
               Right = 299
            End
            DisplayFlags = 280
            TopColumn = 36
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'VConsultaDocumentos_DadosMovimentoContaPrazo'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'VConsultaDocumentos_DadosMovimentoContaPrazo'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[20] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "GBTIT_Entidade"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 136
               Right = 410
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "GBCRES_CodigosResidencia"
            Begin Extent = 
               Top = 138
               Left = 38
               Bottom = 234
               Right = 267
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "GBCSTE_CodigosSectoriaisNaoResidentes"
            Begin Extent = 
               Top = 234
               Left = 38
               Bottom = 364
               Right = 280
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "GBCSTR_CodigosSectoriaisResidentes"
            Begin Extent = 
               Top = 366
               Left = 38
               Bottom = 496
               Right = 281
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "GBTPENT_TiposEntidades"
            Begin Extent = 
               Top = 498
               Left = 38
               Bottom = 628
               Right = 343
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "PACTP_ActividadeProfissional"
            Begin Extent = 
               Top = 630
               Left = 38
               Bottom = 726
               Right = 225
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "PESTC_EstadoCivil"
            Begin Extent = 
               Top = 726
      ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'VConsultaEntidadePorDadosEntidade'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane2', @value=N'         Left = 38
               Bottom = 839
               Right = 311
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "PHBLT_HabilitacoesLiterarias"
            Begin Extent = 
               Top = 840
               Left = 38
               Bottom = 970
               Right = 251
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "PPAIS_Paises"
            Begin Extent = 
               Top = 972
               Left = 38
               Bottom = 1102
               Right = 287
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "PPROF_Profissoes"
            Begin Extent = 
               Top = 1104
               Left = 38
               Bottom = 1217
               Right = 299
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "PREGC_RegimesCasamento"
            Begin Extent = 
               Top = 1218
               Left = 38
               Bottom = 1314
               Right = 269
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "PTIDD_TiposIdentificacao"
            Begin Extent = 
               Top = 1314
               Left = 38
               Bottom = 1444
               Right = 338
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'VConsultaEntidadePorDadosEntidade'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=2 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'VConsultaEntidadePorDadosEntidade'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[20] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "GBTIT_Entidade"
            Begin Extent = 
               Top = 11
               Left = 261
               Bottom = 225
               Right = 633
            End
            DisplayFlags = 280
            TopColumn = 7
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'VConsultaEntidadePorNome'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'VConsultaEntidadePorNome'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[57] 4[4] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "GBCCC_ContasCaucionadas"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 226
               Right = 336
            End
            DisplayFlags = 280
            TopColumn = 42
         End
         Begin Table = "GBMVCC_MovimentosContasCaucionadas"
            Begin Extent = 
               Top = 6
               Left = 374
               Bottom = 211
               Right = 636
            End
            DisplayFlags = 280
            TopColumn = 2
         End
         Begin Table = "GBTIT_Entidade"
            Begin Extent = 
               Top = 6
               Left = 674
               Bottom = 214
               Right = 1046
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "GBLTIT_LigacaoClientesEntidades"
            Begin Extent = 
               Top = 229
               Left = 390
               Bottom = 359
               Right = 656
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'VConsultaMovimentosCCC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'VConsultaMovimentosCCC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[69] 4[7] 2[16] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "GBCCC_ContasCaucionadas"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 136
               Right = 336
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "GBCLI_Clientes"
            Begin Extent = 
               Top = 309
               Left = 374
               Bottom = 439
               Right = 656
            End
            DisplayFlags = 280
            TopColumn = 9
         End
         Begin Table = "GBMORD_Moradas"
            Begin Extent = 
               Top = 65
               Left = 736
               Bottom = 237
               Right = 994
            End
            DisplayFlags = 280
            TopColumn = 2
         End
         Begin Table = "GBMVCC_MovimentosContasCaucionadas"
            Begin Extent = 
               Top = 10
               Left = 457
               Bottom = 252
               Right = 719
            End
            DisplayFlags = 280
            TopColumn = 7
         End
         Begin Table = "GBNATR_NaturezasContas"
            Begin Extent = 
               Top = 251
               Left = 736
               Bottom = 381
               Right = 1006
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "GBTIT_Entidade"
            Begin Extent = 
               Top = 316
               Left = 31
               Bottom = 446
               Right = 278
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "GBLTIT_LigacaoClientesEntidades"
            Begin Extent = 
               Top = 154
               Left = 69
  ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'VConsultaMovimentosCCCExtracto'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane2', @value=N'             Bottom = 284
               Right = 335
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'VConsultaMovimentosCCCExtracto'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=2 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'VConsultaMovimentosCCCExtracto'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[20] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "GBCCO_ContasContabilisticas"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 295
               Right = 311
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "GBMVCO_MovimentosContasContabilisticas"
            Begin Extent = 
               Top = 6
               Left = 349
               Bottom = 286
               Right = 619
            End
            DisplayFlags = 280
            TopColumn = 8
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'VConsultaMovimentosCCO'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'VConsultaMovimentosCCO'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[20] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "GBCCO_ContasContabilisticas"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 251
               Right = 311
            End
            DisplayFlags = 280
            TopColumn = 1
         End
         Begin Table = "GBMVCO_MovimentosContasContabilisticas"
            Begin Extent = 
               Top = 8
               Left = 480
               Bottom = 262
               Right = 750
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'VConsultaMovimentosCCOExtracto'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'VConsultaMovimentosCCOExtracto'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[20] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "GBCCR_ContasCredito"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 242
               Right = 314
            End
            DisplayFlags = 280
            TopColumn = 29
         End
         Begin Table = "GBCLI_Clientes"
            Begin Extent = 
               Top = 0
               Left = 667
               Bottom = 130
               Right = 949
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "GBLTIT_LigacaoClientesEntidades"
            Begin Extent = 
               Top = 156
               Left = 675
               Bottom = 286
               Right = 941
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "GBMVCR_MovimentosContasCredito"
            Begin Extent = 
               Top = 6
               Left = 363
               Bottom = 249
               Right = 625
            End
            DisplayFlags = 280
            TopColumn = 3
         End
         Begin Table = "GBTIT_Entidade"
            Begin Extent = 
               Top = 164
               Left = 999
               Bottom = 294
               Right = 1371
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
       ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'VConsultaMovimentosCCR'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane2', @value=N'  Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'VConsultaMovimentosCCR'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=2 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'VConsultaMovimentosCCR'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[76] 4[13] 2[7] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "GBCCR_ContasCredito"
            Begin Extent = 
               Top = 12
               Left = 384
               Bottom = 333
               Right = 660
            End
            DisplayFlags = 280
            TopColumn = 26
         End
         Begin Table = "GBCLI_Clientes"
            Begin Extent = 
               Top = 372
               Left = 751
               Bottom = 569
               Right = 1033
            End
            DisplayFlags = 280
            TopColumn = 12
         End
         Begin Table = "GBLTIT_LigacaoClientesEntidades"
            Begin Extent = 
               Top = 358
               Left = 424
               Bottom = 504
               Right = 690
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "GBMORD_Moradas"
            Begin Extent = 
               Top = 6
               Left = 732
               Bottom = 204
               Right = 990
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "GBMVCR_MovimentosContasCredito"
            Begin Extent = 
               Top = 0
               Left = 45
               Bottom = 345
               Right = 307
            End
            DisplayFlags = 280
            TopColumn = 2
         End
         Begin Table = "GBNATR_NaturezasContas"
            Begin Extent = 
               Top = 213
               Left = 767
               Bottom = 343
               Right = 1037
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "GBTIT_Entidade"
            Begin Extent = 
               Top = 356
               Left = 11
       ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'VConsultaMovimentosCCRExtracto'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane2', @value=N'        Bottom = 571
               Right = 383
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'VConsultaMovimentosCCRExtracto'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=2 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'VConsultaMovimentosCCRExtracto'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[20] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "GBCDO_ContasDepositosOrdem"
            Begin Extent = 
               Top = 5
               Left = 306
               Bottom = 252
               Right = 598
            End
            DisplayFlags = 280
            TopColumn = 25
         End
         Begin Table = "GBMVDO_MovimentosContasDepositosOrdem"
            Begin Extent = 
               Top = 11
               Left = 5
               Bottom = 256
               Right = 276
            End
            DisplayFlags = 280
            TopColumn = 1
         End
         Begin Table = "GBTIT_Entidade"
            Begin Extent = 
               Top = 6
               Left = 677
               Bottom = 136
               Right = 1049
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "GBLTIT_LigacaoClientesEntidades"
            Begin Extent = 
               Top = 168
               Left = 734
               Bottom = 298
               Right = 1000
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'VConsultaMovimentosCDO'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'VConsultaMovimentosCDO'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[74] 4[14] 2[9] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "GBCDO_ContasDepositosOrdem"
            Begin Extent = 
               Top = 21
               Left = 330
               Bottom = 348
               Right = 622
            End
            DisplayFlags = 280
            TopColumn = 22
         End
         Begin Table = "GBCLI_Clientes"
            Begin Extent = 
               Top = 12
               Left = 691
               Bottom = 142
               Right = 973
            End
            DisplayFlags = 280
            TopColumn = 11
         End
         Begin Table = "GBLTIT_LigacaoClientesEntidades"
            Begin Extent = 
               Top = 174
               Left = 702
               Bottom = 304
               Right = 968
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "GBMORD_Moradas"
            Begin Extent = 
               Top = 393
               Left = 352
               Bottom = 556
               Right = 610
            End
            DisplayFlags = 280
            TopColumn = 3
         End
         Begin Table = "GBMVDO_MovimentosContasDepositosOrdem"
            Begin Extent = 
               Top = 2
               Left = 20
               Bottom = 350
               Right = 291
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "GBTIT_Entidade"
            Begin Extent = 
               Top = 364
               Left = 685
               Bottom = 494
               Right = 1057
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
   End' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'VConsultaMovimentosCDOExtracto'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane2', @value=N'
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'VConsultaMovimentosCDOExtracto'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=2 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'VConsultaMovimentosCDOExtracto'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[54] 4[23] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "GBCDP_ContasDepositosPrazo"
            Begin Extent = 
               Top = 7
               Left = 326
               Bottom = 244
               Right = 595
            End
            DisplayFlags = 280
            TopColumn = 20
         End
         Begin Table = "GBMVDP_MovimentosContasDepositosPrazo"
            Begin Extent = 
               Top = 10
               Left = 28
               Bottom = 374
               Right = 289
            End
            DisplayFlags = 280
            TopColumn = 6
         End
         Begin Table = "GBTIT_Entidade"
            Begin Extent = 
               Top = 6
               Left = 644
               Bottom = 236
               Right = 1016
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "GBCLI_Clientes"
            Begin Extent = 
               Top = 270
               Left = 520
               Bottom = 400
               Right = 802
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "GBLTIT_LigacaoClientesEntidades"
            Begin Extent = 
               Top = 253
               Left = 887
               Bottom = 383
               Right = 1153
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'VConsultaMovimentosCDP'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane2', @value=N' = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'VConsultaMovimentosCDP'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=2 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'VConsultaMovimentosCDP'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[56] 4[31] 2[10] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "GBCDP_ContasDepositosPrazo"
            Begin Extent = 
               Top = 21
               Left = 364
               Bottom = 355
               Right = 633
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "GBCLI_Clientes"
            Begin Extent = 
               Top = 297
               Left = 911
               Bottom = 427
               Right = 1193
            End
            DisplayFlags = 280
            TopColumn = 9
         End
         Begin Table = "GBLTIT_LigacaoClientesEntidades"
            Begin Extent = 
               Top = 141
               Left = 830
               Bottom = 271
               Right = 1096
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "GBMORD_Moradas"
            Begin Extent = 
               Top = 288
               Left = 645
               Bottom = 418
               Right = 903
            End
            DisplayFlags = 280
            TopColumn = 4
         End
         Begin Table = "GBMVDP_MovimentosContasDepositosPrazo"
            Begin Extent = 
               Top = 22
               Left = 46
               Bottom = 363
               Right = 307
            End
            DisplayFlags = 280
            TopColumn = 1
         End
         Begin Table = "GBTIT_Entidade"
            Begin Extent = 
               Top = 2
               Left = 820
               Bottom = 132
               Right = 1192
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
   En' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'VConsultaMovimentosCDPExtracto'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane2', @value=N'd
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'VConsultaMovimentosCDPExtracto'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=2 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'VConsultaMovimentosCDPExtracto'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[20] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "GBOPR_Operacoes"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 235
               Right = 300
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "VConsultaDocumentos_DadosMovimentoContaCaucinada"
            Begin Extent = 
               Top = 6
               Left = 338
               Bottom = 291
               Right = 600
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'VConsultaOperacoesCCC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'VConsultaOperacoesCCC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[20] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "GBMVCC_MovimentosContasCaucionadas"
            Begin Extent = 
               Top = 12
               Left = 891
               Bottom = 295
               Right = 1153
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "GBOPR_Operacoes"
            Begin Extent = 
               Top = 34
               Left = 65
               Bottom = 289
               Right = 327
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "VConsultaDocumentos_DadosMovimentoContaCaucinada"
            Begin Extent = 
               Top = 19
               Left = 486
               Bottom = 321
               Right = 748
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'VConsultaOperacoesCCCExtracto'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'VConsultaOperacoesCCCExtracto'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[20] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "GBOPR_Operacoes"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 195
               Right = 300
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "VConsultaDocumentos_DadosMovimentoContaContabilistica"
            Begin Extent = 
               Top = 6
               Left = 338
               Bottom = 261
               Right = 608
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'VConsultaOperacoesCCO'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'VConsultaOperacoesCCO'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[20] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "GBMVCO_MovimentosContasContabilisticas"
            Begin Extent = 
               Top = 6
               Left = 968
               Bottom = 334
               Right = 1238
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "GBOPR_Operacoes"
            Begin Extent = 
               Top = 6
               Left = 346
               Bottom = 319
               Right = 608
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "VConsultaDocumentos_DadosMovimentoContaContabilistica"
            Begin Extent = 
               Top = 6
               Left = 646
               Bottom = 272
               Right = 916
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'VConsultaOperacoesCCOExtracto'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'VConsultaOperacoesCCOExtracto'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[20] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "GBOPR_Operacoes"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 238
               Right = 300
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "VConsultaDocumentos_DadosMovimentoContaCredito"
            Begin Extent = 
               Top = 6
               Left = 338
               Bottom = 279
               Right = 600
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'VConsultaOperacoesCCR'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'VConsultaOperacoesCCR'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[20] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "VConsultaDocumentos_DadosMovimentoContaCredito"
            Begin Extent = 
               Top = 6
               Left = 312
               Bottom = 298
               Right = 574
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "GBMVCR_MovimentosContasCredito"
            Begin Extent = 
               Top = 0
               Left = 8
               Bottom = 332
               Right = 270
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "GBOPR_Operacoes"
            Begin Extent = 
               Top = 10
               Left = 657
               Bottom = 201
               Right = 919
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'VConsultaOperacoesCCRExtracto'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'VConsultaOperacoesCCRExtracto'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[20] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "GBOPR_Operacoes"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 259
               Right = 300
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "VConsultaDocumentos_DadosMovimentoContaOrdem"
            Begin Extent = 
               Top = 6
               Left = 338
               Bottom = 260
               Right = 609
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'VConsultaOperacoesCDO'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'VConsultaOperacoesCDO'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[20] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "GBMVDO_MovimentosContasDepositosOrdem"
            Begin Extent = 
               Top = 7
               Left = 959
               Bottom = 282
               Right = 1230
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "GBOPR_Operacoes"
            Begin Extent = 
               Top = 6
               Left = 347
               Bottom = 270
               Right = 609
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "VConsultaDocumentos_DadosMovimentoContaOrdem"
            Begin Extent = 
               Top = 6
               Left = 647
               Bottom = 274
               Right = 918
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'VConsultaOperacoesCDOExtracto'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'VConsultaOperacoesCDOExtracto'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[20] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "GBOPR_Operacoes"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 250
               Right = 300
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "VConsultaDocumentos_DadosMovimentoContaPrazo"
            Begin Extent = 
               Top = 6
               Left = 338
               Bottom = 261
               Right = 599
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'VConsultaOperacoesCDP'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'VConsultaOperacoesCDP'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[41] 4[38] 2[18] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "GBOPR_Operacoes"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 270
               Right = 300
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "VConsultaDocumentos_DadosMovimentoContaPrazo"
            Begin Extent = 
               Top = 6
               Left = 338
               Bottom = 289
               Right = 599
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "GBMVDP_MovimentosContasDepositosPrazo"
            Begin Extent = 
               Top = 22
               Left = 747
               Bottom = 323
               Right = 1008
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'VConsultaOperacoesCDPExtracto'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'VConsultaOperacoesCDPExtracto'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[66] 4[16] 2[15] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "GBCLI_Clientes"
            Begin Extent = 
               Top = 49
               Left = 76
               Bottom = 519
               Right = 358
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "GBCNDM_CondicoesMovimentacaoConta"
            Begin Extent = 
               Top = 394
               Left = 441
               Bottom = 521
               Right = 695
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "GBLTIT_LigacaoClientesEntidades"
            Begin Extent = 
               Top = 0
               Left = 428
               Bottom = 152
               Right = 694
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "GBTIT_Entidade"
            Begin Extent = 
               Top = 7
               Left = 755
               Bottom = 137
               Right = 1127
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "GBTRCLI_TiposRelacoesEntidadesClientes"
            Begin Extent = 
               Top = 288
               Left = 998
               Bottom = 478
               Right = 1269
            End
            DisplayFlags = 280
            TopColumn = 5
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'VConsultaRelacaoClienteEntidades'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane2', @value=N'GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'VConsultaRelacaoClienteEntidades'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=2 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'VConsultaRelacaoClienteEntidades'
GO
