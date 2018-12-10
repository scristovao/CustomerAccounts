using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Entity;
using System.Linq;
using System.Threading.Tasks;
using System.Net;
using System.Web;
using System.Web.Mvc;

namespace CustomerAccountsPortal.Models
{
    public class GBTIT_EntidadeController : Controller
    {
        private CustomerAccountsEntities db = new CustomerAccountsEntities();

        // GET: GBTIT_Entidade
        public async Task<ActionResult> Index()
        {
            var gBTIT_Entidade = db.GBTIT_Entidade.Include(g => g.GBCRES_CodigosResidencia).Include(g => g.GBTPENT_TiposEntidades).Include(g => g.PACTP_ActividadeProfissional).Include(g => g.PESTC_EstadoCivil).Include(g => g.PHBLT_HabilitacoesLiterarias).Include(g => g.PPROF_Profissoes).Include(g => g.PREGC_RegimesCasamento);
            return View(await gBTIT_Entidade.ToListAsync());
        }

        // GET: GBTIT_Entidade/Details/5
        public async Task<ActionResult> Details(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            GBTIT_Entidade gBTIT_Entidade = await db.GBTIT_Entidade.FindAsync(id);
            if (gBTIT_Entidade == null)
            {
                return HttpNotFound();
            }
            return View(gBTIT_Entidade);
        }

        // GET: GBTIT_Entidade/Create
        public ActionResult Create()
        {
            ViewBag.TTCRES_CodigoResidencia = new SelectList(db.GBCRES_CodigosResidencia, "RECRES_CodigoResidencia", "REDESC_Descritivo");
            ViewBag.TTTPEN_TipoEntidade = new SelectList(db.GBTPENT_TiposEntidades, "NITPEN_TipoEntidade", "NIDTPE_Descritivo");
            ViewBag.TTACTP_ActividadeProfissional = new SelectList(db.PACTP_ActividadeProfissional, "PACTV_Actividade", "PACDC_Descritivo");
            ViewBag.TTECIV_EstadoCivil = new SelectList(db.PESTC_EstadoCivil, "EECIV_EstadoCivil", "EDCIV_Descritivo");
            ViewBag.TTHABL_Habilitacoes = new SelectList(db.PHBLT_HabilitacoesLiterarias, "PHBTP_Habilitacoes", "HBDC_Descritivo");
            ViewBag.GBTTPROF_Profissao = new SelectList(db.PPROF_Profissoes, "PPRPROF_CodigoProfissao", "PPRDESC_Descritivo");
            ViewBag.TTRCAS_RegimeCasamento = new SelectList(db.PREGC_RegimesCasamento, "CRCAS_RegimeCasamento", "CDCAS_Descritivo");
            return View();
        }

        // POST: GBTIT_Entidade/Create
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<ActionResult> Create([Bind(Include = "TTNUMT_NrEntidade,TTTIPT_EmpresaOuParticular,TTNOMT_NomeEntidade,TTNOME_NomeSemTitulo,TTNOMR_NomeReduzido,TTDNSC_DataNascimento,TTSEXO_Sexo,TTHABL_Habilitacoes,TTACTP_ActividadeProfissional,GBTTPROF_Profissao,GBTTTIPIDF_TipoIdentificacaoFiscal,TTNIF_NrIdentificacaoFiscal,TTBAIR_ReparticaoFiscal,GBTTCTGFSC_CategoriaFiscal,TTTIDE_TipoIdentificacao,TTNIDE_NrIdentificacao,GBTTCKDGID_CheckDigitIdentificacao,TTLOCA_LocalEmissao,TTDTEI_DataEmissao,GBTTDTVAL_DataValidadeDocumento,GBTTNUMACO_NrMatriculaConservatoria,GBTTNOCONS_NomeConservatoria,GBTTNUPBDO_NrPublicacaoDiarioOficial,TTNAC_Nacionalidade,TTNATU_Naturalidade,TTECIV_EstadoCivil,TTRCAS_RegimeCasamento,TTPAI_NomePai,TTMAE_NomeMae,TTENTP_EntidadePatronal,TTFUCA_FuncaoOuCargo,TTDTAD_DataAdmissao,TTTSOC_TipoSociedade,TTCAE_CodigoActividadeEconomica,GBTTCAESC_CodigoActividadeEconomicaSecundario,TTDTCT_DataConstituicao,TTDTPB_DataPublicacao,TTSEDE_DomicilioOuSede,TTCSRA_CapitalSocialOuRendimentoAnual,TTMOED_MoedaCsra,TTVINC_VinculoComOutras,TTNCTR_NrCentralRisco,TTCRES_CodigoResidencia,TTCST_CodigoSectorial,TTPAIS_CodigoPais,TTTPEN_TipoEntidade,TTBLOQ_ComBloqueios,GBTTALER_ComAlertas")] GBTIT_Entidade gBTIT_Entidade)
        {
            if (ModelState.IsValid)
            {
                db.GBTIT_Entidade.Add(gBTIT_Entidade);
                await db.SaveChangesAsync();
                return RedirectToAction("Index");
            }

            ViewBag.TTCRES_CodigoResidencia = new SelectList(db.GBCRES_CodigosResidencia, "RECRES_CodigoResidencia", "REDESC_Descritivo", gBTIT_Entidade.TTCRES_CodigoResidencia);
            ViewBag.TTTPEN_TipoEntidade = new SelectList(db.GBTPENT_TiposEntidades, "NITPEN_TipoEntidade", "NIDTPE_Descritivo", gBTIT_Entidade.TTTPEN_TipoEntidade);
            ViewBag.TTACTP_ActividadeProfissional = new SelectList(db.PACTP_ActividadeProfissional, "PACTV_Actividade", "PACDC_Descritivo", gBTIT_Entidade.TTACTP_ActividadeProfissional);
            ViewBag.TTECIV_EstadoCivil = new SelectList(db.PESTC_EstadoCivil, "EECIV_EstadoCivil", "EDCIV_Descritivo", gBTIT_Entidade.TTECIV_EstadoCivil);
            ViewBag.TTHABL_Habilitacoes = new SelectList(db.PHBLT_HabilitacoesLiterarias, "PHBTP_Habilitacoes", "HBDC_Descritivo", gBTIT_Entidade.TTHABL_Habilitacoes);
            ViewBag.GBTTPROF_Profissao = new SelectList(db.PPROF_Profissoes, "PPRPROF_CodigoProfissao", "PPRDESC_Descritivo", gBTIT_Entidade.GBTTPROF_Profissao);
            ViewBag.TTRCAS_RegimeCasamento = new SelectList(db.PREGC_RegimesCasamento, "CRCAS_RegimeCasamento", "CDCAS_Descritivo", gBTIT_Entidade.TTRCAS_RegimeCasamento);
            return View(gBTIT_Entidade);
        }

        // GET: GBTIT_Entidade/Edit/5
        public async Task<ActionResult> Edit(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            GBTIT_Entidade gBTIT_Entidade = await db.GBTIT_Entidade.FindAsync(id);
            if (gBTIT_Entidade == null)
            {
                return HttpNotFound();
            }
            ViewBag.TTCRES_CodigoResidencia = new SelectList(db.GBCRES_CodigosResidencia, "RECRES_CodigoResidencia", "REDESC_Descritivo", gBTIT_Entidade.TTCRES_CodigoResidencia);
            ViewBag.TTTPEN_TipoEntidade = new SelectList(db.GBTPENT_TiposEntidades, "NITPEN_TipoEntidade", "NIDTPE_Descritivo", gBTIT_Entidade.TTTPEN_TipoEntidade);
            ViewBag.TTACTP_ActividadeProfissional = new SelectList(db.PACTP_ActividadeProfissional, "PACTV_Actividade", "PACDC_Descritivo", gBTIT_Entidade.TTACTP_ActividadeProfissional);
            ViewBag.TTECIV_EstadoCivil = new SelectList(db.PESTC_EstadoCivil, "EECIV_EstadoCivil", "EDCIV_Descritivo", gBTIT_Entidade.TTECIV_EstadoCivil);
            ViewBag.TTHABL_Habilitacoes = new SelectList(db.PHBLT_HabilitacoesLiterarias, "PHBTP_Habilitacoes", "HBDC_Descritivo", gBTIT_Entidade.TTHABL_Habilitacoes);
            ViewBag.GBTTPROF_Profissao = new SelectList(db.PPROF_Profissoes, "PPRPROF_CodigoProfissao", "PPRDESC_Descritivo", gBTIT_Entidade.GBTTPROF_Profissao);
            ViewBag.TTRCAS_RegimeCasamento = new SelectList(db.PREGC_RegimesCasamento, "CRCAS_RegimeCasamento", "CDCAS_Descritivo", gBTIT_Entidade.TTRCAS_RegimeCasamento);
            return View(gBTIT_Entidade);
        }

        // POST: GBTIT_Entidade/Edit/5
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<ActionResult> Edit([Bind(Include = "TTNUMT_NrEntidade,TTTIPT_EmpresaOuParticular,TTNOMT_NomeEntidade,TTNOME_NomeSemTitulo,TTNOMR_NomeReduzido,TTDNSC_DataNascimento,TTSEXO_Sexo,TTHABL_Habilitacoes,TTACTP_ActividadeProfissional,GBTTPROF_Profissao,GBTTTIPIDF_TipoIdentificacaoFiscal,TTNIF_NrIdentificacaoFiscal,TTBAIR_ReparticaoFiscal,GBTTCTGFSC_CategoriaFiscal,TTTIDE_TipoIdentificacao,TTNIDE_NrIdentificacao,GBTTCKDGID_CheckDigitIdentificacao,TTLOCA_LocalEmissao,TTDTEI_DataEmissao,GBTTDTVAL_DataValidadeDocumento,GBTTNUMACO_NrMatriculaConservatoria,GBTTNOCONS_NomeConservatoria,GBTTNUPBDO_NrPublicacaoDiarioOficial,TTNAC_Nacionalidade,TTNATU_Naturalidade,TTECIV_EstadoCivil,TTRCAS_RegimeCasamento,TTPAI_NomePai,TTMAE_NomeMae,TTENTP_EntidadePatronal,TTFUCA_FuncaoOuCargo,TTDTAD_DataAdmissao,TTTSOC_TipoSociedade,TTCAE_CodigoActividadeEconomica,GBTTCAESC_CodigoActividadeEconomicaSecundario,TTDTCT_DataConstituicao,TTDTPB_DataPublicacao,TTSEDE_DomicilioOuSede,TTCSRA_CapitalSocialOuRendimentoAnual,TTMOED_MoedaCsra,TTVINC_VinculoComOutras,TTNCTR_NrCentralRisco,TTCRES_CodigoResidencia,TTCST_CodigoSectorial,TTPAIS_CodigoPais,TTTPEN_TipoEntidade,TTBLOQ_ComBloqueios,GBTTALER_ComAlertas")] GBTIT_Entidade gBTIT_Entidade)
        {
            if (ModelState.IsValid)
            {
                db.Entry(gBTIT_Entidade).State = EntityState.Modified;
                await db.SaveChangesAsync();
                return RedirectToAction("Index");
            }
            ViewBag.TTCRES_CodigoResidencia = new SelectList(db.GBCRES_CodigosResidencia, "RECRES_CodigoResidencia", "REDESC_Descritivo", gBTIT_Entidade.TTCRES_CodigoResidencia);
            ViewBag.TTTPEN_TipoEntidade = new SelectList(db.GBTPENT_TiposEntidades, "NITPEN_TipoEntidade", "NIDTPE_Descritivo", gBTIT_Entidade.TTTPEN_TipoEntidade);
            ViewBag.TTACTP_ActividadeProfissional = new SelectList(db.PACTP_ActividadeProfissional, "PACTV_Actividade", "PACDC_Descritivo", gBTIT_Entidade.TTACTP_ActividadeProfissional);
            ViewBag.TTECIV_EstadoCivil = new SelectList(db.PESTC_EstadoCivil, "EECIV_EstadoCivil", "EDCIV_Descritivo", gBTIT_Entidade.TTECIV_EstadoCivil);
            ViewBag.TTHABL_Habilitacoes = new SelectList(db.PHBLT_HabilitacoesLiterarias, "PHBTP_Habilitacoes", "HBDC_Descritivo", gBTIT_Entidade.TTHABL_Habilitacoes);
            ViewBag.GBTTPROF_Profissao = new SelectList(db.PPROF_Profissoes, "PPRPROF_CodigoProfissao", "PPRDESC_Descritivo", gBTIT_Entidade.GBTTPROF_Profissao);
            ViewBag.TTRCAS_RegimeCasamento = new SelectList(db.PREGC_RegimesCasamento, "CRCAS_RegimeCasamento", "CDCAS_Descritivo", gBTIT_Entidade.TTRCAS_RegimeCasamento);
            return View(gBTIT_Entidade);
        }

        // GET: GBTIT_Entidade/Delete/5
        public async Task<ActionResult> Delete(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            GBTIT_Entidade gBTIT_Entidade = await db.GBTIT_Entidade.FindAsync(id);
            if (gBTIT_Entidade == null)
            {
                return HttpNotFound();
            }
            return View(gBTIT_Entidade);
        }

        // POST: GBTIT_Entidade/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public async Task<ActionResult> DeleteConfirmed(int id)
        {
            GBTIT_Entidade gBTIT_Entidade = await db.GBTIT_Entidade.FindAsync(id);
            db.GBTIT_Entidade.Remove(gBTIT_Entidade);
            await db.SaveChangesAsync();
            return RedirectToAction("Index");
        }

        protected override void Dispose(bool disposing)
        {
            if (disposing)
            {
                db.Dispose();
            }
            base.Dispose(disposing);
        }
    }
}
