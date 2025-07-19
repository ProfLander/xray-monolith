add_module(XRay.Game.UI
  TYPE STATIC

  LINKS
  TinyXML

  SOURCES
  UIDialogHolder.cpp
  UIDialogHolder.h

  UIDosimeter.cpp
  UIDosimeter.h

  ui_base.cpp
  ui_base.h

  ui_defs.h
)

add_module(XRay.Game.UI.Common.Debug.Fonts
  SOURCES
  #ui/UIDebugFonts.cpp
  ui/UIDebugFonts.h
)

add_module(XRay.Game.UI.Common.ImGui
  SOURCES
  #script_imgui.h
  #script_imgui_inline.h
  #script_imgui_script.cpp
)

add_module(XRay.Game.UI.Common.Inventory
  SOURCES
  ui/UIActorMenu.cpp
  ui/UIActorMenu.h

  ui/UIActorMenuDeadBodySearch.cpp
  ui/UIActorMenuInitialize.cpp
  ui/UIActorMenuInventory.cpp
  ui/UIActorMenuTrade.cpp
  ui/UIActorMenuUpgrade.cpp
  ui/UIActorMenu_action.cpp
  ui/UIActorMenu_script.cpp

  ui/UIActorStateInfo.cpp
  ui/UIActorStateInfo.h
)

add_module(XRay.Game.UI.Common.Inventory.Utilities
  SOURCES
  ui/UIHelper.cpp
  ui/UIHelper.h

  ui/UIInventoryUtilities.cpp
  ui/UIInventoryUtilities.h
)

add_module(XRay.Game.UI.Common.Inventory.Window.Upgrade
  SOURCES
  ui/UIInventoryUpgradeWnd.h
  ui/UIInventoryUpgradeWnd.cpp
  ui/UIInventoryUpgradeWnd_add.cpp

  ui/UIInvUpgrade.cpp
  ui/UIInvUpgrade.h

  ui/UIInvUpgradeInfo.cpp
  ui/UIInvUpgradeInfo.h

  ui/UIInvUpgradeProperty.cpp
  ui/UIInvUpgradeProperty.h
)

add_module(XRay.Game.UI.Common.MainIngame
  SOURCES
  ui/UICarPanel.cpp
  ui/UICarPanel.h

  ui/UIHudstatesWnd.cpp
  ui/UIHudstatesWnd.h

  ui/UIMainIngameWnd.cpp
  ui/UIMainIngameWnd.h

  ui/UIMessagesWindow.cpp
  ui/UIMessagesWindow.h

  ui/UIMoneyIndicator.cpp
  ui/UIMoneyIndicator.h

  ui/UIMotionIcon.cpp
  ui/UIMotionIcon.h

  ui/UIPdaMsgListItem.cpp
  ui/UIPdaMsgListItem.h

  UIZoneMap.cpp
  UIZoneMap.h
)

add_module(XRay.Game.UI.Common.MainMenu
  SOURCES
  MainMenu.cpp
  MainMenu.h

  ui/MMSound.cpp
  ui/MMSound.h

  ui/UIMMShniaga.cpp
  ui/UIMMShniaga.h
)

add_module(XRay.Game.UI.Common.MainMenu.KeyBinding
  SOURCES
  ui/UIEditKeyBind.cpp
  ui/UIEditKeyBind.h

  ui/UIKeyBinding.cpp
  ui/UIKeyBinding.h
)

add_module(XRay.Game.UI.Common.Options.ConsoleCommands
  SOURCES
  ui/UIOptConCom.cpp
  ui/UIOptConCom.h
)

add_module(XRay.Game.UI.Common.Options.Item
  SOURCES
  ui/UIOptionsItem.cpp
  ui/UIOptionsItem.h

  ui/UIOptionsManager.cpp
  ui/UIOptionsManager.h

  ui/UIOptionsManagerScript.cpp
  ui/UIOptionsManagerScript.h
)

add_module(XRay.Game.UI.Common.PDA
  SOURCES
  ui/UIPdaWnd.cpp
  ui/UIPdaWnd.h
)

add_module(XRay.Game.UI.Common.PDA.Logs
  SOURCES
  ui/UILogsWnd.cpp
  ui/UILogsWnd.h
)

add_module(XRay.Game.UI.Common.PDA.Logs.News
  SOURCES
  ui/UINewsItemWnd.cpp
  ui/UINewsItemWnd.h
)

add_module(XRay.Game.UI.Common.PDA.Map
  SOURCES
  ui/map_hint.cpp
  ui/map_hint.h

  map_spot.cpp
  map_spot.h

  ui/UIMap.cpp
  ui/UIMap.h

  ui/UIMapWnd.cpp
  ui/UIMapWnd2.cpp
  ui/UIMapWnd.h

  ui/UIMapWndActions.cpp
  ui/UIMapWndActions.h
  ui/UIMapWndActionsSpace.h
)

add_module(XRay.Game.UI.Common.PDA.Statistics
  SOURCES
  ui/UIAchievements.cpp
  ui/UIAchievements.h

  ui/UIRankingsCoC.cpp
  ui/UIRankingsCoC.h

  ui/UIRankingWnd.cpp
  ui/UIRankingWnd.h
)

add_module(XRay.Game.UI.Common.PDA.Tasks
    SOURCES
  ui/UIMapLegend.cpp
  ui/UIMapLegend.h

  ui/UISecondTaskWnd.cpp
  ui/UISecondTaskWnd.h

  ui/UITaskWnd.cpp
  ui/UITaskWnd.h
)

add_module(XRay.Game.UI.Common.Talk
  SOURCES
  ui/UITalkDialogWnd.cpp
  ui/UITalkDialogWnd.h

  ui/UITalkWnd.cpp
  ui/UITalkWnd.h
)

add_module(XRay.Game.UI.ItemInfo
  SOURCES
  ui/ui_af_params.cpp
  ui/ui_af_params.h

  ui/UIBoosterInfo.cpp
  ui/UIBoosterInfo.h

  ui/UIItemInfo.cpp
  ui/UIItemInfo.h

  ui/UIOutfitInfo.cpp
  ui/UIOutfitInfo.h

  ui/UIWpnParams.cpp
  ui/UIWpnParams.h
)

add_module(XRay.Game.UI.ItemInfo.CharacterInfo
  SOURCES
  ui/UICharacterInfo.cpp
  ui/UICharacterInfo.h
)

add_module(XRay.Game.UI.Cursor
  SOURCES
  HUDCrosshair.cpp
  HUDCrosshair.h

  HUDRecon.cpp
  HUDRecon.h

  HUDTarget.cpp
  HUDTarget.h

  UICursor.cpp
  UICursor.h
)

add_module(XRay.Game.UI.GameTypes.ArtefactHunt
  SOURCES
  UIGameAHunt.cpp
  UIGameAHunt.h
)

add_module(XRay.Game.UI.GameTypes.CaptureTheArtefact
  SOURCES
  UIGameCTA.cpp
  UIGameCTA.h
)

add_module(XRay.Game.UI.GameTypes.Deathmatch
  SOURCES
  UIGameDM.cpp
  UIGameDM.h

  ui/UIRankIndicator.cpp
  ui/UIRankIndicator.h

  ui/UIVoteStatusWnd.cpp
  ui/UIVoteStatusWnd.h
)

add_module(XRay.Game.UI.GameTypes.GameCustom
  SOURCES
  UIGameCustom.cpp
  UIGameCustom_script.cpp
  UIGameCustom.h

  UIGameMP.cpp
  UIGameMP.h
)

add_module(XRay.Game.UI.GameTypes.Single
  SOURCES
  UIGameSP.cpp
  UIGameSP.h
)

add_module(XRay.Game.UI.GameTypes.TeamDeathmatch
  SOURCES
  UIGameTDM.cpp
  UIGameTDM.h
)

add_module(XRay.Game.UI.HUD
  SOURCES
  HitMarker.cpp
  HitMarker.h

  HUDManager.cpp
  HUDManager.h
)

add_module(XRay.Game.UI.Multiplayer.Achievements
  SOURCES
  UIAchivementsIndicator.cpp
  UIAchivementsIndicator.h
)

add_module(XRay.Game.UI.Multiplayer.AdminMenu
  SOURCES
  ui/UIMPAdminMenu.cpp
  ui/UIMPAdminMenu.h

  ui/UIMPChangeMapAdm.cpp
  ui/UIMPChangeMapAdm.h

  ui/UIMPPlayersAdm.cpp
  ui/UIMPPlayersAdm.h

  ui/UIMPServerAdm.cpp
  ui/UIMPServerAdm.h
)

add_module(XRay.Game.UI.Multiplayer.BuyWeaponWindow
  SOURCES
  ui/UIBuyWndBase.h

  ui/UIBuyWndShared.cpp
  ui/UIBuyWndShared.h

  ui/UIMpItemsStoreWnd.cpp
  ui/UIMpItemsStoreWnd.h

  ui/UIMpTradeWnd.cpp
  ui/UIMpTradeWnd.h

  ui/UIMpTradeWnd_init.cpp
  ui/UIMpTradeWnd_items.cpp
  ui/UIMpTradeWnd_misc.cpp
  ui/UIMpTradeWnd_trade.cpp
  ui/UIMpTradeWnd_wpn.cpp
)

add_module(XRay.Game.UI.Multiplayer.BuyWeaponWindow.RankRestrictions
  SOURCES
  ui/Restrictions.cpp
  ui/Restrictions.h
)

add_module(XRay.Game.UI.Multiplayer.BuyWeaponWindow.Tab
  SOURCES
  ui/UIBuyWeaponTab.cpp
  ui/UIBuyWeaponTab.h

  ui/UITabButtonMP.cpp
  ui/UITabButtonMP.h
)

add_module(XRay.Game.UI.Multiplayer.DemoPlayControl
  SOURCES
  ui/UIDemoPlayControl.cpp
  ui/UIDemoPlayControl.h
)

add_module(XRay.Game.UI.Multiplayer.HUD.Chat
  SOURCES
  ui/UIChatWnd.cpp
  ui/UIChatWnd.h
)


add_module(XRay.Game.UI.Multiplayer.HUD.Common
  SOURCES
  ui/KillMessageStruct.h

  ui/UIPdaKillMessage.cpp
  ui/UIPdaKillMessage.h
)


add_module(XRay.Game.UI.Multiplayer.HUD.GameLog
  SOURCES
  ui/UIGameLog.cpp
  ui/UIGameLog.h
)


add_module(XRay.Game.UI.Multiplayer.HUD.SpeechMenu
  SOURCES
  ui/UISpeechMenu.cpp
  ui/UISpeechMenu.h
)

add_module(XRay.Game.UI.Multiplayer.HUD.Stats
  SOURCES
  ui/UIStats.cpp
  ui/UIStats.h

  ui/UIStatsPlayerInfo.cpp
  ui/UIStatsPlayerInfo.h

  ui/UIStatsPlayerList.cpp
  ui/UIStatsPlayerList.h
)

add_module(XRay.Game.UI.Multiplayer.HUD.Stats.Icons
  SOURCES
  ui/UIStatsIcon.cpp
  ui/UIStatsIcon.h
)

add_module(XRay.Game.UI.Multiplayer.HUD.Stats.TeamStates
  SOURCES
  UIPanelsClassFactory.cpp
  UIPanelsClassFactory.h

  UIPlayerItem.cpp
  UIPlayerItem.h

  UITeamHeader.cpp
  UITeamHeader.h

  UITeamPanels.cpp
  UITeamPanels.h

  UITeamState.cpp
  UITeamState.h
)

add_module(XRay.Game.UI.Multiplayer.MM-MP.CDKey
  SOURCES
  player_name_modifyer.cpp
  player_name_modifyer.h

  ui/UICDkey.cpp
  ui/UICDkey.h
)

add_module(XRay.Game.UI.Multiplayer.MM-MP.MapList
  SOURCES
  ui/UIMapList.cpp
  ui/UIMapList.h
)

add_module(XRay.Game.UI.Multiplayer.MM-MP.ServerList
  SOURCES
  ui/ServerList.cpp
  ui/ServerList.h

  ui/ServerList_GameSpy_func.cpp

  ui/UIListItemServer.cpp
  ui/UIListItemServer.h
)

add_module(XRay.Game.UI.Multiplayer.MM-MP.TeamInfo
  SOURCES

  ui/TeamInfo.cpp
  ui/TeamInfo.h
)

add_module(XRay.Game.UI.Multiplayer.TeamSkinInfo.MapDesc
  SOURCES
)

add_module(XRay.Game.UI.Multiplayer.TeamSkinInfo.MapDesc.MapInfo
  SOURCES
  ui/UIMapInfo.cpp
  ui/UIMapInfo_script.cpp
  ui/UIMapInfo.h

  ui/UIMapDesc.cpp
  ui/UIMapDesc.h
)

add_module(XRay.Game.UI.Multiplayer.TeamSkinInfo.ServerInfo
  SOURCES
  ui/UIServerInfo.cpp
  ui/UIServerInfo.h
)

add_module(XRay.Game.UI.Multiplayer.TeamSkinInfo.SkinSelector
  SOURCES
  ui/UISkinSelector.cpp
  ui/UISkinSelector.h

  ui/UIStatix.cpp
  ui/UIStatix.h
)

add_module(XRay.Game.UI.Multiplayer.TeamSkinInfo.Spawn
  SOURCES
  ui/UISpawnWnd.cpp
  ui/UISpawnWnd.h
)

add_module(XRay.Game.UI.Multiplayer.Voting
  SOURCES
  ui/ChangeWeatherDialog.cpp
  ui/ChangeWeatherDialog.hpp

  ui/UIChangeMap.cpp
  ui/UIChangeMap.h

  ui/UIKickPlayer.cpp
  ui/UIKickPlayer.h

  ui/UITextVote.cpp
  ui/UITextVote.h

  ui/UIVote.cpp
  ui/UIVote.h

  ui/UIVotingcategory.cpp
  ui/UIVotingcategory.h
)

add_module(XRay.Game.UI.Tutorial
  SOURCES
  ui/UIGameTutorial.cpp
  ui/UIGameTutorialSimpleItem.cpp
  ui/UIGameTutorialVideoItem.cpp
  ui/UIGameTutorial.h
)

add_module(XRay.Game.UI.Windows
  SOURCES
  callback_info.h
  ui/uiabstract.h

  ui/UIMessages.h

  ui/UIWndCallback.cpp
  ui/UIWndCallback.h
)

add_module(XRay.Game.UI.Windows.Arrow
  SOURCES
  ui/ui_arrow.cpp
  ui/ui_arrow.h
)

add_module(XRay.Game.UI.Windows.Buttons
  SOURCES
  ui/UI3tButton.cpp
  ui/UI3tButton.h

  ui/UIBtnHint.cpp
  ui/UIBtnHint.h

  ui/UIButton.cpp
  ui/UIButton_script.cpp
  ui/UIButton.h

  ui/UICheckButton.cpp
  ui/UICheckButton.h

  ui/UIRadioButton.cpp
  ui/UIRadioButton.h
)

add_module(XRay.Game.UI.Windows.ComboBox
  SOURCES
  ui/UIComboBox.cpp
  ui/UIComboBox_script.cpp

  ui/UIComboBox.h
)

add_module(XRay.Game.UI.Windows.DragDrop
  SOURCES
  ui/UICellCustomItems.cpp
  ui/UICellCustomItems.h

  ui/UICellItem.cpp
  ui/UICellItem.h

  ui/UICellItemFactory.cpp
  ui/UICellItemFactory.h

  ui/UIDragDropListEx.cpp
  ui/UIDragDropListEx.h

  ui/UIDragDropReferenceList.cpp
  ui/UIDragDropReferenceList.h
)

add_module(XRay.Game.UI.Windows.EditBox
  SOURCES
  ui/UIEditBox_script.cpp

  ui/UIEditBox.cpp
  ui/UIEditBox.h

  ui/UIEditBoxEx.cpp
  ui/UIEditBoxEx.h
)

add_module(XRay.Game.UI.Windows.EditBox.Custom
  SOURCES
  ui/UICustomEdit.cpp
  ui/UICustomEdit.h
)

add_module(XRay.Game.UI.Windows.Hint
  SOURCES
  ui/UIHint.cpp
  ui/UIHint.h
)

add_module(XRay.Game.UI.Windows.InteractiveBackground
  SOURCES
  ui/UI_IB_Static.cpp
  ui/UI_IB_Static.h

  ui/UIInteractiveBackground.h
)

add_module(XRay.Game.UI.Windows.Lines
  SOURCES
  ui/UILine.cpp
  ui/UILine.h

  ui/UILines.cpp
  ui/UILines.h

  ui/uilinestd.h

  ui/UISubLine.cpp
  ui/UISubLine.h
)

add_module(XRay.Game.UI.Windows.ListBox
  SOURCES
  ui/UIListBox_script.cpp
  ui/UIListBox.cpp
  ui/UIListBox.h

  ui/UIListBoxItem.cpp
  ui/UIListBoxItem.h

  ui/UIListBoxItemMsgChain.cpp
  ui/UIListBoxItemMsgChain.h
)

add_module(XRay.Game.UI.Windows.MessageBox
  SOURCES
  ui/UIMessageBox_script.cpp
  ui/UIMessageBox.cpp
  ui/UIMessageBox.h

  ui/UIMessageBoxEx.cpp
  ui/UIMessageBoxEx.h
)

add_module(XRay.Game.UI.Windows.ProgressBar
  SOURCES
  ui/UIDoubleProgressBar.cpp
  ui/UIDoubleProgressBar.h

  ui/UIProgressBar_script.cpp
  ui/UIProgressBar.cpp
  ui/UIProgressBar.h

  ui/UIProgressShape.cpp
  ui/UIProgressShape.h
)

add_module(XRay.Game.UI.Windows.PropertiesBox
  SOURCES
  ui/UIPropertiesBox_script.cpp
  ui/UIPropertiesBox.cpp
  ui/UIPropertiesBox.h
)

add_module(XRay.Game.UI.Windows.ScriptWindow
  SOURCES
  ui/UIScriptWnd.cpp
  ui/UIScriptWnd.h

  ui/UIScriptWnd_script.cpp
  ui/uiscriptwnd_script.h

  ui/uiscriptwnd_script2.cpp
)

add_module(XRay.Game.UI.Windows.ScrollBar
  SOURCES
  ui/UIFixedScrollBar.cpp
  ui/UIFixedScrollBar.h

  ui/UIScrollBar.cpp
  ui/UIScrollBar.h

  ui/UIScrollBox.cpp
  ui/UIScrollBox.h
)

add_module(XRay.Game.UI.Windows.ScrollView
  SOURCES
  ui/UIScrollView.cpp
  ui/UIScrollView.h
)

add_module(XRay.Game.UI.Windows.SpinBox
  SOURCES
  ui/UICustomSpin.cpp
  ui/UICustomSpin.h

  ui/UISpinNum.cpp
  ui/UISpinNum.h

  ui/UISpinText.cpp
  ui/UISpinText.h
)

add_module(XRay.Game.UI.Windows.Static
  SOURCES
  ui/UIAnimatedStatic.cpp
  ui/UIAnimatedStatic.h

  ui/UILanimcontroller.cpp
  ui/UILanimcontroller.h

  ui/UIStatic_script.cpp
  ui/UIStatic.cpp
  ui/UIStatic.h

  UIStaticItem.cpp
  UIStaticItem.h
)

add_module(XRay.Game.UI.Windows.TabControl
  SOURCES
  ui/UITabButton.cpp
  ui/UITabButton.h

  ui/UITabControl.cpp
  ui/UITabControl_script.cpp
  ui/UITabControl.h
)

add_module(XRay.Game.UI.Windows.TrackBar
  SOURCES
  ui/UITrackBar.cpp
  ui/UITrackBar.h

  ui/UITrackButton.cpp
  ui/UITrackButton.h
)

add_module(XRay.Game.UI.Windows.Windows
  SOURCES
  ui/UIWindow_script.cpp
  ui/UIWindow.cpp
  ui/UIWindow.h

  ui/UIDialogWnd.cpp
  ui/UIDialogWnd.h

  ui/UIFrameLineWnd.cpp
  ui/UIFrameLineWnd.h

  ui/UIFrameWindow.cpp
  ui/UIFrameWindow.h
)

add_module(XRay.Game.UI.Windows.XML
  SOURCES
  ui/UITextureMaster.cpp
  ui/UITextureMaster.h

  ui/UIXmlInit.cpp
  ui/UIXmlInit.h

  ui/xrUIXmlParser.cpp
  ui/xrUIXmlParser.h
)