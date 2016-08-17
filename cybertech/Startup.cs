using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(cybertech.Startup))]
namespace cybertech
{
    public partial class Startup
    {
        public void Configuration(IAppBuilder app)
        {
            ConfigureAuth(app);
        }
    }
}
