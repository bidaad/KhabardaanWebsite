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
	public partial class SitesDataContext : System.Data.Linq.DataContext
	{
		
		private static System.Data.Linq.Mapping.MappingSource mappingSource = new AttributeMappingSource();
		
    #region Extensibility Method Definitions
    partial void OnCreated();
    partial void InsertAllSites(AllSites instance);
    partial void UpdateAllSites(AllSites instance);
    partial void DeleteAllSites(AllSites instance);
    #endregion
		
		public SitesDataContext() : 
				base(global::System.Configuration.ConfigurationManager.ConnectionStrings["KhabardaanConnectionString"].ConnectionString, mappingSource)
		{
			OnCreated();
		}
		
		public SitesDataContext(string connection) : 
				base(connection, mappingSource)
		{
			OnCreated();
		}
		
		public SitesDataContext(System.Data.IDbConnection connection) : 
				base(connection, mappingSource)
		{
			OnCreated();
		}
		
		public SitesDataContext(string connection, System.Data.Linq.Mapping.MappingSource mappingSource) : 
				base(connection, mappingSource)
		{
			OnCreated();
		}
		
		public SitesDataContext(System.Data.IDbConnection connection, System.Data.Linq.Mapping.MappingSource mappingSource) : 
				base(connection, mappingSource)
		{
			OnCreated();
		}
		
		public System.Data.Linq.Table<SiteCatNames> SiteCatNames
		{
			get
			{
				return this.GetTable<SiteCatNames>();
			}
		}
		
		public System.Data.Linq.Table<AllSites> AllSites
		{
			get
			{
				return this.GetTable<AllSites>();
			}
		}
	}
	
	[global::System.Data.Linq.Mapping.TableAttribute(Name="dbo.SiteCatNames")]
	public partial class SiteCatNames
	{
		
		private System.Nullable<int> _ID;
		
		private string _Name;
		
		private System.Nullable<int> _Parent;
		
		public SiteCatNames()
		{
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_ID", DbType="Int")]
		public System.Nullable<int> ID
		{
			get
			{
				return this._ID;
			}
			set
			{
				if ((this._ID != value))
				{
					this._ID = value;
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_Name", DbType="NVarChar(500)")]
		public string Name
		{
			get
			{
				return this._Name;
			}
			set
			{
				if ((this._Name != value))
				{
					this._Name = value;
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_Parent", DbType="Int")]
		public System.Nullable<int> Parent
		{
			get
			{
				return this._Parent;
			}
			set
			{
				if ((this._Parent != value))
				{
					this._Parent = value;
				}
			}
		}
	}
	
	[global::System.Data.Linq.Mapping.TableAttribute(Name="dbo.AllSites")]
	public partial class AllSites : INotifyPropertyChanging, INotifyPropertyChanged
	{
		
		private static PropertyChangingEventArgs emptyChangingEventArgs = new PropertyChangingEventArgs(String.Empty);
		
		private string _ID;
		
		private string _Url;
		
		private string _SiteName;
		
		private string _Description;
		
		private System.Nullable<int> _Cat;
		
		private System.Nullable<int> _Source;
		
		private System.Nullable<int> _VisitCount;
		
		private System.Nullable<int> _Rating;
		
		private System.Nullable<int> _ViewerCount;
		
		private System.Nullable<decimal> _SumAll;
		
		private System.Nullable<byte> _Active;
		
		private string _SenderName;
		
		private string _SenderEmail;
		
    #region Extensibility Method Definitions
    partial void OnLoaded();
    partial void OnValidate(System.Data.Linq.ChangeAction action);
    partial void OnCreated();
    partial void OnIDChanging(string value);
    partial void OnIDChanged();
    partial void OnUrlChanging(string value);
    partial void OnUrlChanged();
    partial void OnSiteNameChanging(string value);
    partial void OnSiteNameChanged();
    partial void OnDescriptionChanging(string value);
    partial void OnDescriptionChanged();
    partial void OnCatChanging(System.Nullable<int> value);
    partial void OnCatChanged();
    partial void OnSourceChanging(System.Nullable<int> value);
    partial void OnSourceChanged();
    partial void OnVisitCountChanging(System.Nullable<int> value);
    partial void OnVisitCountChanged();
    partial void OnRatingChanging(System.Nullable<int> value);
    partial void OnRatingChanged();
    partial void OnViewerCountChanging(System.Nullable<int> value);
    partial void OnViewerCountChanged();
    partial void OnSumAllChanging(System.Nullable<decimal> value);
    partial void OnSumAllChanged();
    partial void OnActiveChanging(System.Nullable<byte> value);
    partial void OnActiveChanged();
    partial void OnSenderNameChanging(string value);
    partial void OnSenderNameChanged();
    partial void OnSenderEmailChanging(string value);
    partial void OnSenderEmailChanged();
    #endregion
		
		public AllSites()
		{
			OnCreated();
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_ID", DbType="VarChar(50) NOT NULL", CanBeNull=false, IsPrimaryKey=true)]
		public string ID
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
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_Url", DbType="VarChar(500) NOT NULL", CanBeNull=false)]
		public string Url
		{
			get
			{
				return this._Url;
			}
			set
			{
				if ((this._Url != value))
				{
					this.OnUrlChanging(value);
					this.SendPropertyChanging();
					this._Url = value;
					this.SendPropertyChanged("Url");
					this.OnUrlChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_SiteName", DbType="NVarChar(1000)")]
		public string SiteName
		{
			get
			{
				return this._SiteName;
			}
			set
			{
				if ((this._SiteName != value))
				{
					this.OnSiteNameChanging(value);
					this.SendPropertyChanging();
					this._SiteName = value;
					this.SendPropertyChanged("SiteName");
					this.OnSiteNameChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_Description", DbType="NText", UpdateCheck=UpdateCheck.Never)]
		public string Description
		{
			get
			{
				return this._Description;
			}
			set
			{
				if ((this._Description != value))
				{
					this.OnDescriptionChanging(value);
					this.SendPropertyChanging();
					this._Description = value;
					this.SendPropertyChanged("Description");
					this.OnDescriptionChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_Cat", DbType="Int")]
		public System.Nullable<int> Cat
		{
			get
			{
				return this._Cat;
			}
			set
			{
				if ((this._Cat != value))
				{
					this.OnCatChanging(value);
					this.SendPropertyChanging();
					this._Cat = value;
					this.SendPropertyChanged("Cat");
					this.OnCatChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_Source", DbType="Int")]
		public System.Nullable<int> Source
		{
			get
			{
				return this._Source;
			}
			set
			{
				if ((this._Source != value))
				{
					this.OnSourceChanging(value);
					this.SendPropertyChanging();
					this._Source = value;
					this.SendPropertyChanged("Source");
					this.OnSourceChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_VisitCount", DbType="Int")]
		public System.Nullable<int> VisitCount
		{
			get
			{
				return this._VisitCount;
			}
			set
			{
				if ((this._VisitCount != value))
				{
					this.OnVisitCountChanging(value);
					this.SendPropertyChanging();
					this._VisitCount = value;
					this.SendPropertyChanged("VisitCount");
					this.OnVisitCountChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_Rating", DbType="Int")]
		public System.Nullable<int> Rating
		{
			get
			{
				return this._Rating;
			}
			set
			{
				if ((this._Rating != value))
				{
					this.OnRatingChanging(value);
					this.SendPropertyChanging();
					this._Rating = value;
					this.SendPropertyChanged("Rating");
					this.OnRatingChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_ViewerCount", DbType="Int")]
		public System.Nullable<int> ViewerCount
		{
			get
			{
				return this._ViewerCount;
			}
			set
			{
				if ((this._ViewerCount != value))
				{
					this.OnViewerCountChanging(value);
					this.SendPropertyChanging();
					this._ViewerCount = value;
					this.SendPropertyChanged("ViewerCount");
					this.OnViewerCountChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_SumAll", DbType="Decimal(18,0)")]
		public System.Nullable<decimal> SumAll
		{
			get
			{
				return this._SumAll;
			}
			set
			{
				if ((this._SumAll != value))
				{
					this.OnSumAllChanging(value);
					this.SendPropertyChanging();
					this._SumAll = value;
					this.SendPropertyChanged("SumAll");
					this.OnSumAllChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_Active", DbType="TinyInt")]
		public System.Nullable<byte> Active
		{
			get
			{
				return this._Active;
			}
			set
			{
				if ((this._Active != value))
				{
					this.OnActiveChanging(value);
					this.SendPropertyChanging();
					this._Active = value;
					this.SendPropertyChanged("Active");
					this.OnActiveChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_SenderName", DbType="NVarChar(50)")]
		public string SenderName
		{
			get
			{
				return this._SenderName;
			}
			set
			{
				if ((this._SenderName != value))
				{
					this.OnSenderNameChanging(value);
					this.SendPropertyChanging();
					this._SenderName = value;
					this.SendPropertyChanged("SenderName");
					this.OnSenderNameChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_SenderEmail", DbType="VarChar(50)")]
		public string SenderEmail
		{
			get
			{
				return this._SenderEmail;
			}
			set
			{
				if ((this._SenderEmail != value))
				{
					this.OnSenderEmailChanging(value);
					this.SendPropertyChanging();
					this._SenderEmail = value;
					this.SendPropertyChanged("SenderEmail");
					this.OnSenderEmailChanged();
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
