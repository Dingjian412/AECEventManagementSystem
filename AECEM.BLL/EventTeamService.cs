using AECEM.DALContainer;
using AECEM.DALEntity;
using AECEM.IBLL;
using AECEM.IDAL;

namespace AECEM.BLL 
{
    public partial class EventTeamService : BaseService<EventTeam>, IEventTeamService
    {
        private IEventTeamDAL  EventTeamDAL = Container.Resolve<IEventTeamDAL>();

        public override void SetDal()
        {
            Dal = EventTeamDAL;
        }
    }
}
