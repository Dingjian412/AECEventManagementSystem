using AECEM.DALContainer;
using AECEM.DALEntity;
using AECEM.IBLL;
using AECEM.IDAL;


namespace AECEM.BLL
{
    public partial class ParticipantService : BaseService<Participant>, IParticipantService
    {
        private IParticipantDAL ParticipantDAL = Container.Resolve<IParticipantDAL>();

        public override void SetDal()
        {
            Dal = ParticipantDAL;
        }
    }
}
