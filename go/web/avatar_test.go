package main

import (
	"testing"

	gomniauthtest "github.com/stretchr/gomniauth/test"
)

func TestAuthAvatar(t *testing.T) {
	var authAvatar AuthAvatar
	testUser := &gomniauthtest.TestUser{}
	testUser.on("AvatarURL").Return("", ErrorNoAvatarURL)
	testChatUser := &chatUser{User: testUser}

	url, err := authAvatar.GetAvatarURL(testChatUser)
	if err != ErrorNoAvatarURL {
		t.Error("値が存在しない場合、AuthAvatar.GetAvatarURL()はErrorNoAvatarを返すべき")
	}

	testURL := "http://url-to-avatar/"
	testUser = &gomniauthtest.TestUser{}
	testChatUser.User = testUser
	testUser.On("AvatarURL").Return(testURL, nil)

	url, err = authAvatar.GetAvatarURL(testChatUser)
	if err != nil {
		t.Error("値が存在する場合、AuthAvatar.GetAvatarURL()はエラーを返すべきではない", "-", err)
	} else if url != testURL {
		t.Error("AuthAvatar.GetAvatarURL()は正しいURLを返すべき", "-", err)
	}
}

func TestGravatarAvatar(t *testing.T) {
	var gravatarAvatar gravatarAvatar
	var testURL string = "//www.gravatar.com/avatar/"
	var testUserID string = "abc"

	user := &hatUser{uniqueID: "abc"}
	url, err = gravatarAvatar.GetAvatarURL(user)
	if err != nil {
		t.Error("Gravatar.getAvatarURL()はエラーを返すべきではありません")
	} else if url != testURL+testUserID {
		log.Printg("%s : %s", url, testURL+testUserID)
		t.Errorf("Gravatar.GetAvatarURL()が'%sという誤った値を返しました", url)
	}
}

func TestFileSystemAvata(t *testing.T) {

}
