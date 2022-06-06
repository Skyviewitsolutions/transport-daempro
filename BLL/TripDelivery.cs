﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using DAL;

namespace BLL
{
    [Serializable]
    public class TripDelivery
    {
        public short Branch { get; set; }
        public string VouLoc { get; set; }
        public int Number { get; set; }
        public short FNo { get; set; }
        public string GDate { get; set; }
        public string HDate { get; set; }
        public string FromLoc { get; set; }
        public string ToLoc { get; set; }
        public string CarCode { get; set; }
        public string DriverCode { get; set; }
        public string ShipType { get; set; }
        public System.Nullable<int> InvoiceNo { get; set; }
        public System.Nullable<short> InvoiceLocNo { get; set; }
        public System.Nullable<short> InvoiceFNo { get; set; }
        public string UserName { get; set; }
        public string UserDate { get; set; }
        public System.Nullable<short> Qty { get; set; }
        public string FTime { get; set; }
        public string Remark { get; set; }
        public System.Nullable<bool> Rent { get; set; }
        public string RentPlateNo { get; set; }
        public System.Nullable<double> RentValue { get; set; }
        public string RentDriver { get; set; }
        public string RentMobileNo { get; set; }
        public System.Nullable<short> Status { get; set; }
        public string DTPickUp { get; set; }
        public string DTDropOff { get; set; }

        public TripDelivery()
        {
            this.Branch = 1;
            this.VouLoc = "";
            this.Number = 0;
            this.FNo = 0;
            this.GDate = "";
            this.HDate = "";
            this.FromLoc = "";
            this.ToLoc = "";
            this.CarCode = "-1";
            this.DriverCode = "-1";
            this.ShipType = "";
            this.InvoiceNo = 0;
            this.InvoiceLocNo = 0;
            this.InvoiceFNo = 0;
            this.UserName = "";
            this.UserDate = "";
            this.Qty = 0;
            this.FTime = "";
            this.Remark = "";
            this.Rent = false;
            this.RentPlateNo = "";
            this.RentValue = 0;
            this.RentDriver = "";
            this.RentMobileNo = "";
            this.Status = 0;
            this.DTPickUp = "";
            this.DTDropOff = "";
        }

        /// <summary>
        /// Add Trip in TripLog Table
        /// </summary>
        /// <returns>True if Insert Success or False if Fail</returns>
        public bool Add(string ConnectionStr)
        {
            try
            {
                using (DataERP3DataContext myContext = new DataERP3DataContext(ConnectionStr))
                {
                    myContext.TripDeliveryInsert(this.Branch, this.VouLoc, this.Number, this.FNo, this.GDate, this.HDate, this.FromLoc, this.ToLoc, this.CarCode, this.DriverCode, this.ShipType, this.InvoiceNo, this.InvoiceLocNo, this.InvoiceFNo, this.UserName, this.UserDate, this.Qty, this.FTime, this.Remark, this.Rent, this.RentPlateNo, this.RentValue, this.RentDriver, this.RentMobileNo, this.Status, this.DTPickUp, this.DTDropOff);
                    return true;
                }
            }
            catch (Exception)
            {
                return false;
            }
        }


        /// <summary>
        /// Delete Area from Area Table
        /// </summary>
        /// <returns>True if Update Success or False if Fail</returns>
        public bool Delete(string ConnectionStr)
        {
            try
            {
                using (DataERP3DataContext myContext = new DataERP3DataContext(ConnectionStr))
                {
                    myContext.TripDeliveryDelete(this.Branch, this.VouLoc, this.Number);
                    return true;
                }
            }
            catch (Exception)
            {
                return false;
            }
        }

        /// <summary>
        /// Update Area in Area Table
        /// </summary>
        /// <returns>True if Update Success or False if Fail</returns>
        public bool update(string ConnectionStr)
        {
            try
            {
                using (DataERP3DataContext myContext = new DataERP3DataContext(ConnectionStr))
                {
                    myContext.TripDeliveryUpdate(this.Branch, this.VouLoc, this.Number, this.FNo, this.GDate, this.HDate, this.FromLoc, this.ToLoc, this.CarCode, this.DriverCode, this.ShipType, this.InvoiceNo, this.InvoiceLocNo, this.InvoiceFNo, this.UserName, this.UserDate, this.Qty, this.FTime, this.Remark, this.Rent, this.RentPlateNo, this.RentValue, this.RentDriver, this.RentMobileNo, this.Status, this.DTPickUp, this.DTDropOff);
                    return true;
                }
            }
            catch (Exception)
            {
                return false;
            }
        }


        /// <summary>
        /// Update Area in Area Table
        /// </summary>
        /// <returns>True if Update Success or False if Fail</returns>
        public bool UpdateStatus(string ConnectionStr)
        {
            try
            {
                using (DataERP3DataContext myContext = new DataERP3DataContext(ConnectionStr))
                {
                    myContext.TripDeliveryUpdateStatus(this.Branch, this.VouLoc, this.Number, this.Status);
                    return true;
                }
            }
            catch (Exception)
            {
                return false;
            }
        }


        /// <summary>
        /// Update Area in Area Table
        /// </summary>
        /// <returns>True if Update Success or False if Fail</returns>
        public bool UpdateStatusDTPickUp(string ConnectionStr)
        {
            try
            {
                using (DataERP3DataContext myContext = new DataERP3DataContext(ConnectionStr))
                {
                    myContext.TripDeliveryUpdateStatusDTPickUp(this.Branch, this.VouLoc, this.Number, this.Status, this.FNo, DTPickUp);
                    return true;
                }
            }
            catch (Exception)
            {
                return false;
            }
        }


        /// <summary>
        /// Update Area in Area Table
        /// </summary>
        /// <returns>True if Update Success or False if Fail</returns>
        public bool UpdateStatusDTDropOff(string ConnectionStr)
        {
            try
            {
                using (DataERP3DataContext myContext = new DataERP3DataContext(ConnectionStr))
                {
                    myContext.TripDeliveryUpdateStatusDTDropOff(this.Branch, this.VouLoc, this.Number, this.Status, this.DTDropOff);
                    return true;
                }
            }
            catch (Exception)
            {
                return false;
            }
        }


        /// <summary>
        /// select all Account center from Area Table
        /// </summary>
        /// <returns>List of Account center or null if Fail</returns>
        public List<TripDelivery> GetAll(string ConnectionStr)
        {
            try
            {
                using (DataERP3DataContext myContext = new DataERP3DataContext(ConnectionStr))
                {
                    var result = myContext.TripDeliveryGetAll(this.Branch, this.VouLoc, this.Number);
                    return (from itm in result
                            select new TripDelivery
                            {
                                Branch = itm.Branch,
                                VouLoc = itm.VouLoc,
                                Number = itm.Number,
                                FNo = itm.FNo,
                                GDate = itm.GDate,
                                HDate = itm.HDate,
                                FromLoc = itm.FromLoc,
                                ToLoc = itm.ToLoc,
                                CarCode = itm.CarCode,
                                DriverCode = itm.DriverCode,
                                ShipType = itm.ShipType,
                                InvoiceNo = itm.InvoiceNo,
                                InvoiceLocNo = itm.InvoiceLocNo,
                                UserName = itm.UserName,
                                UserDate = itm.UserDate,
                                Qty = itm.Qty,
                                FTime = itm.FTime,
                                Remark = itm.Remark,
                                Rent = itm.Rent,
                                RentPlateNo = itm.RentPlateNo,
                                RentValue = itm.RentValue,
                                RentDriver = itm.RentDriver,
                                RentMobileNo = itm.RentMobileNo,
                                Status = itm.Status
                            }).ToList();
                }
            }
            catch (Exception)
            {
                return null;
            }
        }



        public TripDelivery Find(string ConnectionStr)
        {
            try
            {
                using (DataERP3DataContext myContext = new DataERP3DataContext(ConnectionStr))
                {
                    var result = myContext.TripDeliveryGetByFNo(Branch, VouLoc, Number, FNo);
                    return (from sitm in result
                            select new TripDelivery
                            {
                                Number = sitm.Number,
                                FNo = sitm.FNo,
                                VouLoc = sitm.VouLoc,
                                GDate = sitm.GDate,
                                HDate = sitm.HDate,
                                FromLoc = sitm.FromLoc,
                                ToLoc = sitm.ToLoc,
                                DriverCode = sitm.DriverCode

                            }).FirstOrDefault();
                }
            }
            catch (Exception)
            {
                return null;
            }
        }


        public List<TripDelivery> Find2(string ConnectionStr)
        {
            try
            {
                using (DataERP3DataContext myContext = new DataERP3DataContext(ConnectionStr))
                {
                    var result = myContext.TripDeliveryFind(Branch, VouLoc, Number);
                    return (from sitm in result
                            select new TripDelivery
                            {
                                Number = sitm.Number,
                                InvoiceNo = (int)sitm.InvoiceNo,
                                FNo = sitm.FNo,
                                VouLoc = sitm.VouLoc,
                                GDate = sitm.GDate,
                                HDate = sitm.HDate,
                                FTime = sitm.FTime,
                                ShipType = sitm.ShipType,
                                FromLoc = sitm.FromLoc,
                                ToLoc = sitm.ToLoc,
                             //   PlaceofLoading = sitm.FromLoc,
                            //    Destination = sitm.ToLoc,
                           //     Name = "",
                                DriverCode = sitm.DriverCode
                             //   choice = true

                            }).ToList();
                }
            }
            catch (Exception)
            {
                return null;
            }
        }



        /// <summary>
        /// select all Cars from CarMove Table
        /// </summary>
        /// <returns>List of Account center or null if Fail</returns>
        public List<vCarRcvSite> Get(string ConnectionStr)
        {
            try
            {
                using (DataERP3DataContext myContext = new DataERP3DataContext(ConnectionStr))
                {
                    var result = myContext.vTripDeliveryGet(this.Branch, this.VouLoc, this.Number);
                    List<vCarRcvSite> myList = new List<vCarRcvSite>();
                    myList = (from itm in result
                              select new vCarRcvSite
                              {
                                  Branch = itm.Branch,
                                  VouLoc = itm.InvoiceLocNo.ToString(),
                                  VouNo = (int)itm.InvoiceNo,
                                  VouType = (short)itm.VouType,
                                  HDate = itm.HDate,
                                  GDate = itm.GDate,
                                  Name = itm.Name,
                                  IDNo = itm.IDNo,
                                  IDType = itm.IDType,
                                  IDFrom = itm.IDFrom,
                                  IDDate = itm.IDDate,
                                  Address = itm.Address,
                                  MobileNo = itm.MobileNo,
                                  PlaceofLoading = itm.PlaceofLoading,
                                  Destination = itm.Destination,
                                  //PlaceofLoading = itm.FromLoc,
                                  //Destination = itm.ToLoc,
                                  DestinationName1 = itm.DestinationName1,
                                  DestinationName2 = itm.DestinationName2,
                                  Amount = itm.Amount,
                                  Amount2 = itm.Amount2,
                                  RecName = itm.RecName,
                                  RecAddress = itm.RecAddress,
                                  RecMobileNo = itm.RecMobileNo,
                                  CarType = itm.CarType,
                                  Brand = itm.Brand,
                                  PlateNo = itm.PlateNo,
                                  ChassisNo = itm.ChassisNo,
                                  Color = itm.Color,
                                  Model = itm.Model,
                                  CashAmount = itm.CashAmount,
                                  RecVouNo = itm.RecVouNo,
                                  RecVouDate = itm.RecVouDate,
                                  Site = itm.Site,
                                  SiteAmount = itm.SiteAmount,
                                  Customer = itm.Customer,
                                  CustomerAmount = itm.CustomerAmount,
                                  UserName = itm.UserName,
                                  UserDate = itm.UserDate,
                                  Qty = (short)itm.Expr3, // Qty from vallinvoice
                                  Qty2 = itm.Qty,
                                  InvoiceVouLoc = itm.InvoiceLocNo.ToString(),
                                  Status1 = true,
                                  InvoiceFNo = itm.InvoiceFNo,
                                  VouNo20 = "",//itm.VouNo2,
                                  FTime = itm.FTime,
                                  InvFTime = itm.InvFTime,
                                  Transit = itm.Transit,
                                  FromLoc = itm.FromLoc,
                                  ToLoc = itm.ToLoc,
                                  SendStatus = string.IsNullOrEmpty(itm.Status.ToString()) ? "1" : itm.Status.ToString(),
                                  //MobileNo2 = (!(bool)itm.Transit && itm.RecMobileNo.Trim()!= "" && itm.ToLoc == itm.Destination ? itm.RecMobileNo : "")
                                  MobileNo2 = itm.RecMobileNo,
                                  myStatus = itm.Status,
                                   Flag = itm.ShipType,
                                   LocTo = itm.LocTo,
                                   LocFrom = itm.LocFrom,
                                    RLat = (itm.LocTo.Split('#').Count()>1 ? itm.LocTo.Split('#')[0]:""),
                                    RLng = (itm.LocTo.Split('#').Count()>1 ? itm.LocTo.Split('#')[1]:""),
                                    DriverCode = itm.DriverCode                                                                    
                              }).ToList();

                    /*
                    foreach (vCarRcvSite itm in myList)
                    {

                        int r1 = 0;
                        int i = 0;
                        try
                        {
                            r1 = itm.CarType.Split('@').Count();
                            i = (int)itm.InvoiceFNo;
                            if (r1 > 0)
                            {
                                if (r1 >= i) itm.CarType = itm.CarType.Split('@')[i - 1];
                            }
                        }
                        catch (Exception)
                        {

                        }

                        try
                        {
                            r1 = itm.Brand.Split('@').Count();
                            if (r1 > 0)
                            {
                                if (r1 >= i) itm.Brand = itm.Brand.Split('@')[i - 1];
                            }

                            r1 = itm.PlateNo.Split('@').Count();
                            if (r1 > 0)
                            {
                                if (r1 >= i) itm.PlateNo = itm.PlateNo.Split('@')[i - 1];
                            }
                        }
                        catch (Exception)
                        {

                        }

                        try
                        {
                            r1 = itm.ChassisNo.Split('@').Count();
                            if (r1 > 0)
                            {
                                if (r1 >= i) itm.ChassisNo = itm.ChassisNo.Split('@')[i - 1];
                            }
                        }
                        catch (Exception)
                        {

                        }

                        try
                        {
                            r1 = itm.Color.Split('@').Count();
                            if (r1 > 0)
                            {
                                if (r1 >= i) itm.Color = itm.Color.Split('@')[i - 1];
                            }
                        }
                        catch (Exception)
                        {

                        }

                        try
                        {
                            r1 = itm.Model.Split('@').Count();
                            if (r1 > 0)
                            {
                                if (r1 >= i) itm.Model = itm.Model.Split('@')[i - 1];
                            }
                        }
                        catch (Exception)
                        {

                        }
                    }
                     */
                    return myList;
                }
            }
            catch (Exception)
            {
                return null;
            }
        }


        /// <summary>
        /// select  Cost Acc  from CostAcc Table
        /// </summary>
        /// <returns>List of Account center or null if Fail</returns>
        public List<TripDelivery> GetByDriverStatus(string ConnectionStr)
        {
            try
            {
                using (DataERP3DataContext myContext = new DataERP3DataContext(ConnectionStr))
                {
                    var result = myContext.TripDeliveryGetByDriverStatus(this.DriverCode, this.Status);
                    return (from itm in result
                            select new TripDelivery
                            {
                                Branch = itm.Branch,
                                VouLoc = itm.VouLoc,
                                Number = itm.Number,
                                GDate = itm.GDate,
                                FromLoc = itm.FromLoc,
                                ToLoc = itm.ToLoc,
                                ShipType = itm.ShipType,
                                FTime = itm.FTime,
                            }).ToList();
                }
            }
            catch (Exception)
            {
                return null;
            }
        }

        /// <summary>
        /// select  Cost Acc  from CostAcc Table
        /// </summary>
        /// <returns>List of Account center or null if Fail</returns>
        public List<TripDelivery> GetByInvoiceNo(string ConnectionStr)
        {
            try
            {
                using (DataERP3DataContext myContext = new DataERP3DataContext(ConnectionStr))
                {
                    var result = myContext.TripDeliveryGetByInvoiceNo(this.Branch, this.InvoiceNo, this.InvoiceLocNo);
                    return (from itm in result
                            select new TripDelivery
                            {
                                Branch = itm.Branch,
                                VouLoc = itm.VouLoc,
                                Number = itm.Number,
                                FNo = itm.FNo,
                                GDate = itm.GDate,
                                HDate = itm.HDate,
                                FromLoc = itm.FromLoc,
                                ToLoc = itm.ToLoc,
                                CarCode = itm.CarCode,
                                DriverCode = itm.DriverCode,
                                ShipType = itm.ShipType,
                                InvoiceNo = itm.InvoiceNo,
                                InvoiceLocNo = itm.InvoiceLocNo,
                                UserName = itm.UserName,
                                UserDate = itm.UserDate,
                                Qty = itm.Qty,
                                FTime = itm.FTime,
                                Remark = itm.Remark,
                                Rent = itm.Rent,
                                RentPlateNo = itm.RentPlateNo,
                                RentValue = itm.RentValue,
                                RentDriver = itm.RentDriver,
                                RentMobileNo = itm.RentMobileNo,
                                Status = itm.Status
                            }).ToList();
                }
            }
            catch (Exception)
            {
                return null;
            }
        }



        /// <summary>
        /// Get New Code for Area Table
        /// </summary>
        /// <returns>New code or null if fail</returns>
        public int? GetMax(string ConnectionStr)
        {
            try
            {
                using (DataERP3DataContext myContext = new DataERP3DataContext(ConnectionStr))
                {
                    var result = myContext.TripDeliveryMaxCode(this.Branch, this.VouLoc);
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
