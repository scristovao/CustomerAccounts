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
    
    public partial class GBCLI_Clientes
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public GBCLI_Clientes()
        {
            this.GBLTIT_LigacaoClientesEntidades = new HashSet<GBLTIT_LigacaoClientesEntidades>();
        }
    
        public int CLNCLI_NrCliente { get; set; }
        public Nullable<int> CLBAL_Balcao { get; set; }
        public Nullable<int> CLDTAB_DataAbertura { get; set; }
        public string CLCRES_CodigoResidencia { get; set; }
        public string CLCST_CodigoSectorial { get; set; }
        public string CLTCLI_SegmentoCliente { get; set; }
        public string CLTTIT_TipoTitularidade { get; set; }
        public string CLCORR_EnvioCorrespondencia { get; set; }
        public string CLMSGP_ComMensagemPendente { get; set; }
        public string CLBLOQ_ComBloqueios { get; set; }
        public Nullable<int> CLNIVC_NivelConfidencial { get; set; }
        public string CLGERC_GestorCliente { get; set; }
        public string CLOBSV_Observacoes { get; set; }
        public string CLEPAR_EmpresaOuParticular { get; set; }
        public string CLPAIS_CodigoPais { get; set; }
        public Nullable<int> CLCNDM_CondicoesMovimentacao { get; set; }
        public string CLCIAC_ComIsencaoActiva { get; set; }
        public string CLCSAC_CodigoServicoApoio { get; set; }
        public string CLPCNG_PerfilClienteNegociado { get; set; }
        public string CLRACE_RestricoesAcesso { get; set; }
        public string GBCLALER_ComAlertas { get; set; }
        public string GBCLEXTINT_ExtractoIntegrado { get; set; }
        public Nullable<int> GBCLDTUEXT_DataUltimoExtracto { get; set; }
        public Nullable<int> GBCLNUEXT_NumeroUltimoExtracto { get; set; }
        public string GBCLPEREXT_PeriodicidadeExtracto { get; set; }
    
        public virtual GBCNDM_CondicoesMovimentacaoConta GBCNDM_CondicoesMovimentacaoConta { get; set; }
        public virtual GBCRES_CodigosResidencia GBCRES_CodigosResidencia { get; set; }
        public virtual GBTCLI_SegmentoCliente GBTCLI_SegmentoCliente { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<GBLTIT_LigacaoClientesEntidades> GBLTIT_LigacaoClientesEntidades { get; set; }
    }
}
