using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(application.Startup))]
namespace application
{
    public partial class Startup
    {
        public void Configuration(IAppBuilder app)
        {
            ConfigureAuth(app);
        }
    }
}
