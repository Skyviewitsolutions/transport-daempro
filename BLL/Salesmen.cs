﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using DAL;

namespace BLL
{
    [Serializable]
    public class Salesmen
    {
        public short Branch { get; set; }
        public string Code { get; set; }
        public string Name1 { get; set; }
        public string Name2 { get; set; }
        public string FType2 { get; set; } // for test

        /// <summary>
        /// Add Salesmen in Salesmen Table
        /// </summary>
        /// <returns>True if Insert Success or False if Fail</returns>
        public bool Add(string ConnectionStr)
        {
            try
            {
                using (DataERPDataContext myContext = new DataERPDataContext(ConnectionStr))
                {
                    myContext.SalesmenInsert(this.Branch, this.Code, this.Name1, this.Name2);
                    return true;
                }
            }
            catch (Exception)
            {
                return false;
            }
        }


        /// <summary>
        /// Delete Salesmen from Salesmen Table
        /// </summary>
        /// <returns>True if Update Success or False if Fail</returns>
        public bool Delete(string ConnectionStr)
        {
            try
            {
                using (DataERPDataContext myContext = new DataERPDataContext(ConnectionStr))
                {
                    myContext.SalesmenDelete(this.Branch, this.Code);
                    return true;
                }
            }
            catch (Exception)
            {
                return false;
            }
        }

        /// <summary>
        /// Update Salesmen in Salesmen Table
        /// </summary>
        /// <returns>True if Update Success or False if Fail</returns>
        public bool update(string ConnectionStr)
        {
            try
            {
                using (DataERPDataContext myContext = new DataERPDataContext(ConnectionStr))
                {
                    myContext.SalesmenUpdate(this.Branch, this.Code, this.Name1, this.Name2);
                    return true;
                }
            }
            catch (Exception)
            {
                return false;
            }
        }


        /// <summary>
        /// select all Salesmen from Salesmen Table
        /// </summary>
        /// <returns>List of Salesmen or null if Fail</returns>
        public List<Salesmen> GetAll(string ConnectionStr)
        {
            try
            {
                using (DataERPDataContext myContext = new DataERPDataContext(ConnectionStr))
                {
                    var result = myContext.SalesmenGetAll(this.Branch);
                    return (from itm in result
                            select new Salesmen
                            {
                                Branch = itm.Branch,
                                Code = itm.Code,
                                Name1 = itm.Name1,
                                Name2 = itm.Name2,
                            }).ToList();
                }
            }
            catch (Exception)
            {
                return null;
            }
        }


        /// <summary>
        /// select all Salesmen from Salesmen Table
        /// </summary>
        /// <returns>List of Salesmen or null if Fail</returns>
        public Salesmen Find(string ConnectionStr)
        {
            try
            {
                using (DataERPDataContext myContext = new DataERPDataContext(ConnectionStr))
                {
                    var result = myContext.SalesmenGet(this.Branch,this.Code);
                    return (from itm in result
                            select new Salesmen
                            {
                                Branch = itm.Branch,
                                Code = itm.Code,
                                Name1 = itm.Name1,
                                Name2 = itm.Name2,
                            }).FirstOrDefault();
                }
            }
            catch (Exception)
            {
                return null;
            }
        }

        /// <summary>
        /// Get New Code for Salesmen Table
        /// </summary>
        /// <returns>New code or null if fail</returns>
        public string GetNewCode(string ConnectionStr)
        {
            try
            {
                using (DataERPDataContext myContext = new DataERPDataContext(ConnectionStr))
                {
                    var result = myContext.SalesmenCode(this.Branch);
                    return (from Cat in result
                            select Cat.myCode).FirstOrDefault();
                }
            }
            catch (Exception)
            {
                return null;
            }
        }

    }

}
