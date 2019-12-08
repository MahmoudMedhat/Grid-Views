using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(GridView.Startup))]
namespace GridView
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}
