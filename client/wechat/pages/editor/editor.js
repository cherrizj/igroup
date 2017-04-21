Page({
    data: {
        height: 20,
        focus: false
    },
    bindFormSubmit: function(e) {
        console.log(e.detail.value.textarea)
        wx.navigateTo({
          url: '../index/index'
        })
    }
})
