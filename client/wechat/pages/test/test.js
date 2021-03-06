//index.js
//获取应用实例
var app = getApp()
Page({
  data: {
    motto: 'Wake Up Neo!',
    userInfo: {}
  },
  //事件处理函数
  bindViewTap: function() {
    wx.navigateTo({
      url: '../logs/logs'
    })
  },
  goToTextarea: function() {
    wx.navigateTo({
      url: '../textarea/textarea'
    })
  },
  scan:function(cb){
    wx.scanCode({
      success: (res) => {
        console.log(res)
      }
    })
  },
  changeName: function(e) {
    this.setData({
      motto: 'Hello iGroup'
    })
  },

  getLocation: function(e) {
    wx.getLocation({
      type: 'gcj02', //返回可以用于wx.openLocation的经纬度
      success: function(res) {
        var latitude = res.latitude
        var longitude = res.longitude
        wx.openLocation({
          latitude: latitude,
          longitude: longitude,
          scale: 28
        })
      }
    })
  },

  onLoad: function () {
    console.log('onLoad')
    var that = this
    //调用应用实例的方法获取全局数据
    app.getUserInfo(function(userInfo){
      //更新数据
      that.setData({
        userInfo:userInfo
      })
    })
  }
})
