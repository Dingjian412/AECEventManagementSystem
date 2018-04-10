using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(AECEventManagementSystem.Startup))]
namespace AECEventManagementSystem
{
    public partial class Startup
    {
        public void Configuration(IAppBuilder app)
        {
            ConfigureAuth(app);
        }
    }
}
