using AECEM.DALContainer;
using AECEM.DALEntity;
using AECEM.IBLL;
using AECEM.IDAL;

namespace AECEM.BLL
{
    public partial class TeamParticipantService : BaseService<TeamParticipant>,ITeamParticipantService
    {
        private ITeamParticipantDAL TeamParticipantDAL = Container.Resolve<ITeamParticipantDAL>();

        public override void SetDal()
        {
            Dal = TeamParticipantDAL;
        }
    }
}
