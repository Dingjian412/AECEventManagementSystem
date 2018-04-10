using AECEM.DALContainer;
using AECEM.DALEntity;
using AECEM.IBLL;
using AECEM.IDAL;
namespace AECEM.BLL
{
    public partial class TeamService : BaseService<Team>, ITeamService
    {
        private ITeamDAL Team = Container.Resolve<ITeamDAL>();

        public override void SetDal()
        {
            Dal = Team;
        }
    }
}
