using System;
using System.Collections.Generic;
using System.Configuration;
using System.Configuration.Provider;
using System.Linq;
using System.Security.Cryptography;
using System.Text;
using System.Threading.Tasks;
using System.Web.Configuration;
using System.Web.Security;
using Rendezvous.Engine.Data.Entity;
using Rendezvous.Engine.Data.Interfaces;
using User = Rendezvous.Engine.Data.Entity.User;

namespace Rendezvous.Engine.Data.Repository
{
    public partial class UserRepository : RepositoryBase<User, int>
    {
        public static User CreateNewUser(string email, string firstName, string lastName, string unhashedPassword,
                                         int customerId, IEnumerable<Role> roles)
        {
            var password = EncodePassword(unhashedPassword);
            var newUser = new User
            {
                Active = true,
                CreatedTS = DateTime.UtcNow,
                Email = email,
                FirstName = firstName,
                LastName = lastName,
                Password = password
            };

            foreach (var role in roles)
            {
                newUser.UserRoles.Add(new UserRole { Role = role, User = newUser });
            }
            Repo.InsertOnSubmit(newUser);
            Repo.SubmitChanges();
            return newUser;
        }

        private static string EncodePassword(string password)
        {
            string encodedPassword = password;
            // Get encryption and decryption key information from the configuration.
            Configuration cfg = WebConfigurationManager.OpenWebConfiguration(System.Web.Hosting.HostingEnvironment.ApplicationVirtualPath);
            var machineKey = (MachineKeySection)cfg.GetSection("system.web/machineKey");
            
            HMACSHA1 hash = new HMACSHA1();
            hash.Key = HexToByte(machineKey.ValidationKey);
            encodedPassword =
                Convert.ToBase64String(hash.ComputeHash(Encoding.Unicode.GetBytes(password)));
            

            return encodedPassword;
        }

        private static byte[] HexToByte(string hexString)
        {
            byte[] returnBytes = new byte[hexString.Length / 2];
            for (int i = 0; i < returnBytes.Length; i++)
                returnBytes[i] = Convert.ToByte(hexString.Substring(i * 2, 2), 16);
            return returnBytes;
        }
    }
}
