﻿#pragma warning disable 1591
//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated by a tool.
//     Runtime Version:4.0.30319.42000
//
//     Changes to this file may cause incorrect behavior and will be lost if
//     the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace Khabardaan.Code.DAL
{
	using System.Data.Linq;
	using System.Data.Linq.Mapping;
	using System.Data;
	using System.Collections.Generic;
	using System.Reflection;
	using System.Linq;
	using System.Linq.Expressions;
	using System.ComponentModel;
	using System;
	
	
	[global::System.Data.Linq.Mapping.DatabaseAttribute(Name="Khabardaan")]
	public partial class HoroscopeDataContext : System.Data.Linq.DataContext
	{
		
		private static System.Data.Linq.Mapping.MappingSource mappingSource = new AttributeMappingSource();
		
    #region Extensibility Method Definitions
    partial void OnCreated();
    partial void InsertHoroscope(Horoscope instance);
    partial void UpdateHoroscope(Horoscope instance);
    partial void DeleteHoroscope(Horoscope instance);
    #endregion
		
		public HoroscopeDataContext() : 
				base(global::System.Configuration.ConfigurationManager.ConnectionStrings["KhabardaanConnectionString"].ConnectionString, mappingSource)
		{
			OnCreated();
		}
		
		public HoroscopeDataContext(string connection) : 
				base(connection, mappingSource)
		{
			OnCreated();
		}
		
		public HoroscopeDataContext(System.Data.IDbConnection connection) : 
				base(connection, mappingSource)
		{
			OnCreated();
		}
		
		public HoroscopeDataContext(string connection, System.Data.Linq.Mapping.MappingSource mappingSource) : 
				base(connection, mappingSource)
		{
			OnCreated();
		}
		
		public HoroscopeDataContext(System.Data.IDbConnection connection, System.Data.Linq.Mapping.MappingSource mappingSource) : 
				base(connection, mappingSource)
		{
			OnCreated();
		}
		
		public System.Data.Linq.Table<Horoscope> Horoscopes
		{
			get
			{
				return this.GetTable<Horoscope>();
			}
		}
	}
	
	[global::System.Data.Linq.Mapping.TableAttribute(Name="dbo.Horoscope")]
	public partial class Horoscope : INotifyPropertyChanging, INotifyPropertyChanged
	{
		
		private static PropertyChangingEventArgs emptyChangingEventArgs = new PropertyChangingEventArgs(String.Empty);
		
		private int _ID;
		
		private string _HMonth;
		
		private string _Type;
		
		private string _Desc;
		
    #region Extensibility Method Definitions
    partial void OnLoaded();
    partial void OnValidate(System.Data.Linq.ChangeAction action);
    partial void OnCreated();
    partial void OnIDChanging(int value);
    partial void OnIDChanged();
    partial void OnHMonthChanging(string value);
    partial void OnHMonthChanged();
    partial void OnTypeChanging(string value);
    partial void OnTypeChanged();
    partial void OnDescChanging(string value);
    partial void OnDescChanged();
    #endregion
		
		public Horoscope()
		{
			OnCreated();
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_ID", DbType="Int NOT NULL", IsPrimaryKey=true)]
		public int ID
		{
			get
			{
				return this._ID;
			}
			set
			{
				if ((this._ID != value))
				{
					this.OnIDChanging(value);
					this.SendPropertyChanging();
					this._ID = value;
					this.SendPropertyChanged("ID");
					this.OnIDChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_HMonth", DbType="VarChar(50)")]
		public string HMonth
		{
			get
			{
				return this._HMonth;
			}
			set
			{
				if ((this._HMonth != value))
				{
					this.OnHMonthChanging(value);
					this.SendPropertyChanging();
					this._HMonth = value;
					this.SendPropertyChanged("HMonth");
					this.OnHMonthChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_Type", DbType="VarChar(50)")]
		public string Type
		{
			get
			{
				return this._Type;
			}
			set
			{
				if ((this._Type != value))
				{
					this.OnTypeChanging(value);
					this.SendPropertyChanging();
					this._Type = value;
					this.SendPropertyChanged("Type");
					this.OnTypeChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Name="[Desc]", Storage="_Desc", DbType="NText", UpdateCheck=UpdateCheck.Never)]
		public string Desc
		{
			get
			{
				return this._Desc;
			}
			set
			{
				if ((this._Desc != value))
				{
					this.OnDescChanging(value);
					this.SendPropertyChanging();
					this._Desc = value;
					this.SendPropertyChanged("Desc");
					this.OnDescChanged();
				}
			}
		}
		
		public event PropertyChangingEventHandler PropertyChanging;
		
		public event PropertyChangedEventHandler PropertyChanged;
		
		protected virtual void SendPropertyChanging()
		{
			if ((this.PropertyChanging != null))
			{
				this.PropertyChanging(this, emptyChangingEventArgs);
			}
		}
		
		protected virtual void SendPropertyChanged(String propertyName)
		{
			if ((this.PropertyChanged != null))
			{
				this.PropertyChanged(this, new PropertyChangedEventArgs(propertyName));
			}
		}
	}
}
#pragma warning restore 1591
