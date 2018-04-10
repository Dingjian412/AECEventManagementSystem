using AECEM.DALContainer;
using AECEM.DALEntity;
using AECEM.IBLL;
using AECEM.IDAL;

namespace AECEM.BLL
{
    public partial class PitStopService : BaseService<PitStop>, IPitStopService
    {
        private IPitStopDAL PitStop = Container.Resolve<IPitStopDAL>();

        public override void SetDal()
        {
            Dal = PitStop;
        }
    }
}
