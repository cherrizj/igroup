//index.js
//获取应用实例
var app = getApp()
Page({
  data: {
    motto: 'Wake Up Neo!',
    userInfo: {}
  },
  goToLog: function() {
    wx.navigateTo({
      url: '../logs/logs'
    })
  },
  goToEditor: function() {
    wx.navigateTo({
      url: '../editor/editor'
    })
  },
  goToTest: function() {
    wx.navigateTo({
      url: '../test/test'
    })
  },
  goToTextarea: function() {
    wx.navigateTo({
      url: '../textarea/textarea'
    })
  }
})
