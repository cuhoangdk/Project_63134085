using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(Project_63134085.Startup))]
namespace Project_63134085
{
    public partial class Startup
    {
        public void Configuration(IAppBuilder app)
        {
            ConfigureAuth(app);
        }
    }
}
