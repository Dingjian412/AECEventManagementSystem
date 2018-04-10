using AECEM.DALContainer;
using AECEM.DALEntity;
using AECEM.IBLL;
using AECEM.IDAL;

namespace AECEM.BLL
{
    public partial class EventPitService : BaseService<EventPit>, IEventPitService
    {
        private IEventPitDAL EventPitDAL = Container.Resolve<IEventPitDAL>();

        public override void SetDal()
        {
            Dal = EventPitDAL;
        }
    }
}
