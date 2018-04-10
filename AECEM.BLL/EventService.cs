using AECEM.DALContainer;
using AECEM.DALEntity;
using AECEM.IBLL;
using AECEM.IDAL;

namespace AECEM.BLL
{
    public partial class EventService : BaseService<Event>, IEventService
    {
        private IEventDAL Event = Container.Resolve<IEventDAL>();

        public override void SetDal()
        {
            Dal = Event;
        }
    }
}
