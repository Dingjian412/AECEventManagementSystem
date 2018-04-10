using AECEM.BLLContainer;
using AECEM.DALEntity;
using AECEM.IBLL;
using System.Collections.Generic;
using System.Linq;
using System;

namespace Test
{
    class Program
    {
        static IParticipantService ParticipantService = Container.Resolve<IParticipantService>();
        static Participant p = new Participant();
       
        static void Main(string[] args)
        {
            //add a new participant
            //p.Age = 27;
            //p.Name = "dj";
            //p.HP = "898989";
            //p.CreatedTime = DateTime.Now;
            //p.CreatedBy = "Testing";
            //p.UpdatedBy = null;
            //p.UpdatedTime = null;
            //p.ParticipantID = 3;
            //ParticipantService.Add(p);

            //edit above participant 
            //p.Age = 27;
            //p.Name = "djUpdated";
            //p.HP = "89898900000";
            //p.CreatedTime = DateTime.Now;
            //p.CreatedBy = "Testing";
            //p.UpdatedBy = "DevloperTesting";
            //p.UpdatedTime = DateTime.Now;
            //p.ParticipantID = 3;
            //ParticipantService.Update(p);

            //delete above participant 3 is participantID
            //var parti = ParticipantService.GetModels(p => p.ParticipantID == 3).FirstOrDefault();
            //ParticipantService.Delete(parti);

            //Show all participant
            List<Participant> participants = ParticipantService.GetModels(p => true).ToList();
        }
    }


}

