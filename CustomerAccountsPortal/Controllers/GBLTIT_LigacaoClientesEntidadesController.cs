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
    public class GBLTIT_LigacaoClientesEntidadesController : Controller
    {
        private CustomerAccountsEntities db = new CustomerAccountsEntities();

        // GET: GBLTIT_LigacaoClientesEntidades
        public async Task<ActionResult> Index()
        {
            var gBLTIT_LigacaoClientesEntidades = db.GBLTIT_LigacaoClientesEntidades.Include(g => g.GBCLI_Clientes).Include(g => g.GBTIT_Entidade).Include(g => g.GBTRCLI_TiposRelacoesEntidadesClientes);
            return View(await gBLTIT_LigacaoClientesEntidades.ToListAsync());
        }

        // GET: GBLTIT_LigacaoClientesEntidades/Details/5
        public async Task<ActionResult> Details(long? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            GBLTIT_LigacaoClientesEntidades gBLTIT_LigacaoClientesEntidades = await db.GBLTIT_LigacaoClientesEntidades.FindAsync(id);
            if (gBLTIT_LigacaoClientesEntidades == null)
            {
                return HttpNotFound();
            }
            return View(gBLTIT_LigacaoClientesEntidades);
        }

        // GET: GBLTIT_LigacaoClientesEntidades/Create
        public ActionResult Create()
        {
            ViewBag.LTNCLI_NumeroCliente = new SelectList(db.GBCLI_Clientes, "CLNCLI_NrCliente", "CLCRES_CodigoResidencia");
            ViewBag.LTNTIT_NumeroEntidade = new SelectList(db.GBTIT_Entidade, "TTNUMT_NrEntidade", "TTTIPT_EmpresaOuParticular");
            ViewBag.LTRCLI_RelacaoCliente = new SelectList(db.GBTRCLI_TiposRelacoesEntidadesClientes, "RTRCLI_RelacaoComCliente", "RTSORD_SeqOrdenacao");
            return View();
        }

        // POST: GBLTIT_LigacaoClientesEntidades/Create
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<ActionResult> Create([Bind(Include = "LTNCLI_LTNTIT,LTNCLI_NumeroCliente,LTNTIT_NumeroEntidade,LTRCLI_RelacaoCliente,LTRCPE_RelacaoPrimeiraEntidade")] GBLTIT_LigacaoClientesEntidades gBLTIT_LigacaoClientesEntidades)
        {
            if (ModelState.IsValid)
            {
                db.GBLTIT_LigacaoClientesEntidades.Add(gBLTIT_LigacaoClientesEntidades);
                await db.SaveChangesAsync();
                return RedirectToAction("Index");
            }

            ViewBag.LTNCLI_NumeroCliente = new SelectList(db.GBCLI_Clientes, "CLNCLI_NrCliente", "CLCRES_CodigoResidencia", gBLTIT_LigacaoClientesEntidades.LTNCLI_NumeroCliente);
            ViewBag.LTNTIT_NumeroEntidade = new SelectList(db.GBTIT_Entidade, "TTNUMT_NrEntidade", "TTTIPT_EmpresaOuParticular", gBLTIT_LigacaoClientesEntidades.LTNTIT_NumeroEntidade);
            ViewBag.LTRCLI_RelacaoCliente = new SelectList(db.GBTRCLI_TiposRelacoesEntidadesClientes, "RTRCLI_RelacaoComCliente", "RTSORD_SeqOrdenacao", gBLTIT_LigacaoClientesEntidades.LTRCLI_RelacaoCliente);
            return View(gBLTIT_LigacaoClientesEntidades);
        }

        // GET: GBLTIT_LigacaoClientesEntidades/Edit/5
        public async Task<ActionResult> Edit(long? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            GBLTIT_LigacaoClientesEntidades gBLTIT_LigacaoClientesEntidades = await db.GBLTIT_LigacaoClientesEntidades.FindAsync(id);
            if (gBLTIT_LigacaoClientesEntidades == null)
            {
                return HttpNotFound();
            }
            ViewBag.LTNCLI_NumeroCliente = new SelectList(db.GBCLI_Clientes, "CLNCLI_NrCliente", "CLCRES_CodigoResidencia", gBLTIT_LigacaoClientesEntidades.LTNCLI_NumeroCliente);
            ViewBag.LTNTIT_NumeroEntidade = new SelectList(db.GBTIT_Entidade, "TTNUMT_NrEntidade", "TTTIPT_EmpresaOuParticular", gBLTIT_LigacaoClientesEntidades.LTNTIT_NumeroEntidade);
            ViewBag.LTRCLI_RelacaoCliente = new SelectList(db.GBTRCLI_TiposRelacoesEntidadesClientes, "RTRCLI_RelacaoComCliente", "RTSORD_SeqOrdenacao", gBLTIT_LigacaoClientesEntidades.LTRCLI_RelacaoCliente);
            return View(gBLTIT_LigacaoClientesEntidades);
        }

        // POST: GBLTIT_LigacaoClientesEntidades/Edit/5
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<ActionResult> Edit([Bind(Include = "LTNCLI_LTNTIT,LTNCLI_NumeroCliente,LTNTIT_NumeroEntidade,LTRCLI_RelacaoCliente,LTRCPE_RelacaoPrimeiraEntidade")] GBLTIT_LigacaoClientesEntidades gBLTIT_LigacaoClientesEntidades)
        {
            if (ModelState.IsValid)
            {
                db.Entry(gBLTIT_LigacaoClientesEntidades).State = EntityState.Modified;
                await db.SaveChangesAsync();
                return RedirectToAction("Index");
            }
            ViewBag.LTNCLI_NumeroCliente = new SelectList(db.GBCLI_Clientes, "CLNCLI_NrCliente", "CLCRES_CodigoResidencia", gBLTIT_LigacaoClientesEntidades.LTNCLI_NumeroCliente);
            ViewBag.LTNTIT_NumeroEntidade = new SelectList(db.GBTIT_Entidade, "TTNUMT_NrEntidade", "TTTIPT_EmpresaOuParticular", gBLTIT_LigacaoClientesEntidades.LTNTIT_NumeroEntidade);
            ViewBag.LTRCLI_RelacaoCliente = new SelectList(db.GBTRCLI_TiposRelacoesEntidadesClientes, "RTRCLI_RelacaoComCliente", "RTSORD_SeqOrdenacao", gBLTIT_LigacaoClientesEntidades.LTRCLI_RelacaoCliente);
            return View(gBLTIT_LigacaoClientesEntidades);
        }

        // GET: GBLTIT_LigacaoClientesEntidades/Delete/5
        public async Task<ActionResult> Delete(long? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            GBLTIT_LigacaoClientesEntidades gBLTIT_LigacaoClientesEntidades = await db.GBLTIT_LigacaoClientesEntidades.FindAsync(id);
            if (gBLTIT_LigacaoClientesEntidades == null)
            {
                return HttpNotFound();
            }
            return View(gBLTIT_LigacaoClientesEntidades);
        }

        // POST: GBLTIT_LigacaoClientesEntidades/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public async Task<ActionResult> DeleteConfirmed(long id)
        {
            GBLTIT_LigacaoClientesEntidades gBLTIT_LigacaoClientesEntidades = await db.GBLTIT_LigacaoClientesEntidades.FindAsync(id);
            db.GBLTIT_LigacaoClientesEntidades.Remove(gBLTIT_LigacaoClientesEntidades);
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
