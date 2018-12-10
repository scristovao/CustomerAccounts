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
    public class GBCLI_ClientesController : Controller
    {
        private CustomerAccountsEntities db = new CustomerAccountsEntities();

        // GET: GBCLI_Clientes
        public async Task<ActionResult> Index()
        {
            var gBCLI_Clientes = db.GBCLI_Clientes.Include(g => g.GBCNDM_CondicoesMovimentacaoConta).Include(g => g.GBCRES_CodigosResidencia).Include(g => g.GBTCLI_SegmentoCliente);
            return View(await gBCLI_Clientes.ToListAsync());
        }

        // GET: GBCLI_Clientes/Details/5
        public async Task<ActionResult> Details(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            GBCLI_Clientes gBCLI_Clientes = await db.GBCLI_Clientes.FindAsync(id);
            if (gBCLI_Clientes == null)
            {
                return HttpNotFound();
            }
            return View(gBCLI_Clientes);
        }

        // GET: GBCLI_Clientes/Create
        public ActionResult Create()
        {
            ViewBag.CLCNDM_CondicoesMovimentacao = new SelectList(db.GBCNDM_CondicoesMovimentacaoConta, "ATCNDM_CondMovimentacao", "ATDCND_Descritivo");
            ViewBag.CLCRES_CodigoResidencia = new SelectList(db.GBCRES_CodigosResidencia, "RECRES_CodigoResidencia", "REDESC_Descritivo");
            ViewBag.CLTCLI_SegmentoCliente = new SelectList(db.GBTCLI_SegmentoCliente, "TCTIPO_Tipo", "TCDESC_Descritivo");
            return View();
        }

        // POST: GBCLI_Clientes/Create
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<ActionResult> Create([Bind(Include = "CLNCLI_NrCliente,CLBAL_Balcao,CLDTAB_DataAbertura,CLCRES_CodigoResidencia,CLCST_CodigoSectorial,CLTCLI_SegmentoCliente,CLTTIT_TipoTitularidade,CLCORR_EnvioCorrespondencia,CLMSGP_ComMensagemPendente,CLBLOQ_ComBloqueios,CLNIVC_NivelConfidencial,CLGERC_GestorCliente,CLOBSV_Observacoes,CLEPAR_EmpresaOuParticular,CLPAIS_CodigoPais,CLCNDM_CondicoesMovimentacao,CLCIAC_ComIsencaoActiva,CLCSAC_CodigoServicoApoio,CLPCNG_PerfilClienteNegociado,CLRACE_RestricoesAcesso,GBCLALER_ComAlertas,GBCLEXTINT_ExtractoIntegrado,GBCLDTUEXT_DataUltimoExtracto,GBCLNUEXT_NumeroUltimoExtracto,GBCLPEREXT_PeriodicidadeExtracto")] GBCLI_Clientes gBCLI_Clientes)
        {
            if (ModelState.IsValid)
            {
                db.GBCLI_Clientes.Add(gBCLI_Clientes);
                await db.SaveChangesAsync();
                return RedirectToAction("Index");
            }

            ViewBag.CLCNDM_CondicoesMovimentacao = new SelectList(db.GBCNDM_CondicoesMovimentacaoConta, "ATCNDM_CondMovimentacao", "ATDCND_Descritivo", gBCLI_Clientes.CLCNDM_CondicoesMovimentacao);
            ViewBag.CLCRES_CodigoResidencia = new SelectList(db.GBCRES_CodigosResidencia, "RECRES_CodigoResidencia", "REDESC_Descritivo", gBCLI_Clientes.CLCRES_CodigoResidencia);
            ViewBag.CLTCLI_SegmentoCliente = new SelectList(db.GBTCLI_SegmentoCliente, "TCTIPO_Tipo", "TCDESC_Descritivo", gBCLI_Clientes.CLTCLI_SegmentoCliente);
            return View(gBCLI_Clientes);
        }

        // GET: GBCLI_Clientes/Edit/5
        public async Task<ActionResult> Edit(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            GBCLI_Clientes gBCLI_Clientes = await db.GBCLI_Clientes.FindAsync(id);
            if (gBCLI_Clientes == null)
            {
                return HttpNotFound();
            }
            ViewBag.CLCNDM_CondicoesMovimentacao = new SelectList(db.GBCNDM_CondicoesMovimentacaoConta, "ATCNDM_CondMovimentacao", "ATDCND_Descritivo", gBCLI_Clientes.CLCNDM_CondicoesMovimentacao);
            ViewBag.CLCRES_CodigoResidencia = new SelectList(db.GBCRES_CodigosResidencia, "RECRES_CodigoResidencia", "REDESC_Descritivo", gBCLI_Clientes.CLCRES_CodigoResidencia);
            ViewBag.CLTCLI_SegmentoCliente = new SelectList(db.GBTCLI_SegmentoCliente, "TCTIPO_Tipo", "TCDESC_Descritivo", gBCLI_Clientes.CLTCLI_SegmentoCliente);
            return View(gBCLI_Clientes);
        }

        // POST: GBCLI_Clientes/Edit/5
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<ActionResult> Edit([Bind(Include = "CLNCLI_NrCliente,CLBAL_Balcao,CLDTAB_DataAbertura,CLCRES_CodigoResidencia,CLCST_CodigoSectorial,CLTCLI_SegmentoCliente,CLTTIT_TipoTitularidade,CLCORR_EnvioCorrespondencia,CLMSGP_ComMensagemPendente,CLBLOQ_ComBloqueios,CLNIVC_NivelConfidencial,CLGERC_GestorCliente,CLOBSV_Observacoes,CLEPAR_EmpresaOuParticular,CLPAIS_CodigoPais,CLCNDM_CondicoesMovimentacao,CLCIAC_ComIsencaoActiva,CLCSAC_CodigoServicoApoio,CLPCNG_PerfilClienteNegociado,CLRACE_RestricoesAcesso,GBCLALER_ComAlertas,GBCLEXTINT_ExtractoIntegrado,GBCLDTUEXT_DataUltimoExtracto,GBCLNUEXT_NumeroUltimoExtracto,GBCLPEREXT_PeriodicidadeExtracto")] GBCLI_Clientes gBCLI_Clientes)
        {
            if (ModelState.IsValid)
            {
                db.Entry(gBCLI_Clientes).State = EntityState.Modified;
                await db.SaveChangesAsync();
                return RedirectToAction("Index");
            }
            ViewBag.CLCNDM_CondicoesMovimentacao = new SelectList(db.GBCNDM_CondicoesMovimentacaoConta, "ATCNDM_CondMovimentacao", "ATDCND_Descritivo", gBCLI_Clientes.CLCNDM_CondicoesMovimentacao);
            ViewBag.CLCRES_CodigoResidencia = new SelectList(db.GBCRES_CodigosResidencia, "RECRES_CodigoResidencia", "REDESC_Descritivo", gBCLI_Clientes.CLCRES_CodigoResidencia);
            ViewBag.CLTCLI_SegmentoCliente = new SelectList(db.GBTCLI_SegmentoCliente, "TCTIPO_Tipo", "TCDESC_Descritivo", gBCLI_Clientes.CLTCLI_SegmentoCliente);
            return View(gBCLI_Clientes);
        }

        // GET: GBCLI_Clientes/Delete/5
        public async Task<ActionResult> Delete(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            GBCLI_Clientes gBCLI_Clientes = await db.GBCLI_Clientes.FindAsync(id);
            if (gBCLI_Clientes == null)
            {
                return HttpNotFound();
            }
            return View(gBCLI_Clientes);
        }

        // POST: GBCLI_Clientes/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public async Task<ActionResult> DeleteConfirmed(int id)
        {
            GBCLI_Clientes gBCLI_Clientes = await db.GBCLI_Clientes.FindAsync(id);
            db.GBCLI_Clientes.Remove(gBCLI_Clientes);
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
