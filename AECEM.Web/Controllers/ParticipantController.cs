using AECEM.BLLContainer;
using AECEM.DALEntity;
using AECEM.IBLL;
using System.Collections.Generic;
using System.Linq;
using System.Web.Mvc;

namespace AECEM.Web.Controllers
{
    public class ParticipantController : Controller
    {
        private IParticipantService ParticipantService = Container.Resolve<IParticipantService>();
        // GET: Participant
        public ActionResult ViewAll()
        {
            List<Participant> participants = ParticipantService.GetModels(p => true).ToList();
            return View(participants);
        }
    }
}