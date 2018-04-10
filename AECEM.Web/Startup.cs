using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(AECEM.Web.Startup))]
namespace AECEM.Web
{
    public partial class Startup
    {
        public void Configuration(IAppBuilder app)
        {
            ConfigureAuth(app);
        }
    }
}
