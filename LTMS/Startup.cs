using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(LTMS.Startup))]
namespace LTMS
{
    public partial class Startup
    {
        public void Configuration(IAppBuilder app)
        {
            ConfigureAuth(app);
        }
    }
}
