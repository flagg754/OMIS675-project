using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(OMIS675_Project.Startup))]
namespace OMIS675_Project
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}
