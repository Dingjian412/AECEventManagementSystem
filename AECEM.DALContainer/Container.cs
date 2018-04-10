using AECEM.DAL;
using AECEM.IDAL;
using Autofac;
using System;

namespace AECEM.DALContainer
{
    public class Container
    {
        public static IContainer container = null;

        public static T Resolve<T>()
        {
            try
            {
                if (container == null)
                {
                    Initialise();
                }
            }
            catch (Exception ex)
            {
                throw new Exception("IOC Instance error!" + ex.Message);
            }

            return container.Resolve<T>();
        }

        public static void Initialise()
        {
            var builder = new ContainerBuilder();
            builder.RegisterType<ParticipantDAL>().As<IParticipantDAL>().InstancePerLifetimeScope();
            builder.RegisterType<EventDAL>().As<IEventDAL>().InstancePerLifetimeScope();
            builder.RegisterType<PitStopDAL>().As<IPitStopDAL>().InstancePerLifetimeScope();
            builder.RegisterType<TeamDAL>().As<ITeamDAL>().InstancePerLifetimeScope();
            builder.RegisterType<EventPitDAL>().As<IEventPitDAL>().InstancePerLifetimeScope();
            builder.RegisterType<EventTeamDAL>().As<IEventTeamDAL>().InstancePerLifetimeScope();
            builder.RegisterType<TeamParticipantDAL>().As<ITeamParticipantDAL>().InstancePerLifetimeScope();
            container = builder.Build();
        }
    }
}
