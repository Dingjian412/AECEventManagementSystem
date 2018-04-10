using AECEM.BLL;
using AECEM.IBLL;
using Autofac;
using System;
namespace AECEM.BLLContainer
{
    public class Container
    {
        public static IContainer container = null;
        public static T Resolve<T>()
        {
            try
            {
                Initialise();
            }
            catch (Exception ex)
            {
                throw new Exception("IOC Instance Error! " + ex.Message);
            }
            return container.Resolve<T>();
        }

        public static void Initialise()
        {
            var builder = new ContainerBuilder();
            builder.RegisterType<ParticipantService>().As<IParticipantService>().InstancePerLifetimeScope();
            builder.RegisterType<EventService>().As<IEventService>().InstancePerLifetimeScope();
            builder.RegisterType<PitStopService>().As<IPitStopService>().InstancePerLifetimeScope();
            builder.RegisterType<TeamService>().As<ITeamService>().InstancePerLifetimeScope();
            builder.RegisterType<EventPitService>().As<IEventPitService>().InstancePerLifetimeScope();
            builder.RegisterType<EventTeamService>().As<IEventTeamService>().InstancePerLifetimeScope();
            builder.RegisterType<TeamParticipantService>().As<ITeamParticipantService>().InstancePerLifetimeScope();
            container = builder.Build();
        }
    }
}
