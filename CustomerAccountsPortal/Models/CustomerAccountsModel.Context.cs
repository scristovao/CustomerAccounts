﻿//------------------------------------------------------------------------------
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
    using System.Data.Entity;
    using System.Data.Entity.Infrastructure;
    
    public partial class CustomerAccountsEntities : DbContext
    {
        public CustomerAccountsEntities()
            : base("name=CustomerAccountsEntities")
        {
        }
    
        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            throw new UnintentionalCodeFirstException();
        }
    
        public virtual DbSet<GBCCC_ContasCaucionadas> GBCCC_ContasCaucionadas { get; set; }
        public virtual DbSet<GBCCO_ContasContabilisticas> GBCCO_ContasContabilisticas { get; set; }
        public virtual DbSet<GBCCR_ContasCredito> GBCCR_ContasCredito { get; set; }
        public virtual DbSet<GBCDO_ContasDepositosOrdem> GBCDO_ContasDepositosOrdem { get; set; }
        public virtual DbSet<GBCDP_ContasDepositosPrazo> GBCDP_ContasDepositosPrazo { get; set; }
        public virtual DbSet<GBCLI_Clientes> GBCLI_Clientes { get; set; }
        public virtual DbSet<GBCNDM_CondicoesMovimentacaoConta> GBCNDM_CondicoesMovimentacaoConta { get; set; }
        public virtual DbSet<GBCODOP_CodigosOperacao> GBCODOP_CodigosOperacao { get; set; }
        public virtual DbSet<GBCRES_CodigosResidencia> GBCRES_CodigosResidencia { get; set; }
        public virtual DbSet<GBCSTE_CodigosSectoriaisNaoResidentes> GBCSTE_CodigosSectoriaisNaoResidentes { get; set; }
        public virtual DbSet<GBCSTR_CodigosSectoriaisResidentes> GBCSTR_CodigosSectoriaisResidentes { get; set; }
        public virtual DbSet<GBDOC_Documentos> GBDOC_Documentos { get; set; }
        public virtual DbSet<GBLTIT_LigacaoClientesEntidades> GBLTIT_LigacaoClientesEntidades { get; set; }
        public virtual DbSet<GBMORD_Moradas> GBMORD_Moradas { get; set; }
        public virtual DbSet<GBMVCC_MovimentosContasCaucionadas> GBMVCC_MovimentosContasCaucionadas { get; set; }
        public virtual DbSet<GBMVCO_MovimentosContasContabilisticas> GBMVCO_MovimentosContasContabilisticas { get; set; }
        public virtual DbSet<GBMVCR_MovimentosContasCredito> GBMVCR_MovimentosContasCredito { get; set; }
        public virtual DbSet<GBMVDO_MovimentosContasDepositosOrdem> GBMVDO_MovimentosContasDepositosOrdem { get; set; }
        public virtual DbSet<GBMVDP_MovimentosContasDepositosPrazo> GBMVDP_MovimentosContasDepositosPrazo { get; set; }
        public virtual DbSet<GBNATR_NaturezasContas> GBNATR_NaturezasContas { get; set; }
        public virtual DbSet<GBOPR_Operacoes> GBOPR_Operacoes { get; set; }
        public virtual DbSet<GBTCLI_SegmentoCliente> GBTCLI_SegmentoCliente { get; set; }
        public virtual DbSet<GBTIT_Entidade> GBTIT_Entidade { get; set; }
        public virtual DbSet<GBTPENT_TiposEntidades> GBTPENT_TiposEntidades { get; set; }
        public virtual DbSet<GBTRCLI_TiposRelacoesEntidadesClientes> GBTRCLI_TiposRelacoesEntidadesClientes { get; set; }
        public virtual DbSet<PACTP_ActividadeProfissional> PACTP_ActividadeProfissional { get; set; }
        public virtual DbSet<PESTC_EstadoCivil> PESTC_EstadoCivil { get; set; }
        public virtual DbSet<PHBLT_HabilitacoesLiterarias> PHBLT_HabilitacoesLiterarias { get; set; }
        public virtual DbSet<PPAIS_Paises> PPAIS_Paises { get; set; }
        public virtual DbSet<PPROF_Profissoes> PPROF_Profissoes { get; set; }
        public virtual DbSet<PREGC_RegimesCasamento> PREGC_RegimesCasamento { get; set; }
        public virtual DbSet<PTIDD_TiposIdentificacao> PTIDD_TiposIdentificacao { get; set; }
    }
}
