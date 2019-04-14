# rxdart_issue

This repository contains a flutter app for reproducing [rxdart's issue](https://github.com/ReactiveX/rxdart/pull/266)

## Reproduction steps

1. Clone this repository
1. Run the flutter app (I used Android Studio & Android Emulator)
1. Click the button `Open another screen`
1. The following error is shown
   - `textColor: Theme.of(context).accentColor` is required to reproduce the issue, but I'm not sure the reason ...

```
E/flutter (15609): [ERROR:flutter/lib/ui/ui_dart_state.cc(148)] Unhandled Exception: NoSuchMethodError: The method 'cancel' was called on null.
E/flutter (15609): Receiver: null
E/flutter (15609): Tried calling: cancel()
E/flutter (15609): #0      Object.noSuchMethod (dart:core/runtime/libobject_patch.dart:50:5)
E/flutter (15609): #1      SwitchMapStreamTransformer._buildTransformer.<anonymous closure>.<anonymous closure> (package:rxdart/src/transformers/switch_map.dart:76:55)
E/flutter (15609): <asynchronous suspension>
E/flutter (15609): #2      _StreamController._recordCancel (dart:async/stream_controller.dart:713:20)
E/flutter (15609): #3      _ControllerSubscription._onCancel (dart:async/stream_controller.dart:841:24)
E/flutter (15609): #4      _BufferingStreamSubscription._cancel (dart:async/stream_impl.dart:242:21)
E/flutter (15609): #5      _BufferingStreamSubscription.cancel (dart:async/stream_impl.dart:194:7)
E/flutter (15609): #6      _StreamBuilderBaseState._unsubscribe (package:flutter/src/widgets/async.dart:154:21)
E/flutter (15609): #7      _StreamBuilderBaseState.didUpdateWidget (package:flutter/src/widgets/async.dart:117:9)
E/flutter (15609): #8      StatefulElement.update (package:flutter/src/widgets/framework.dart:3879:58)
E/flutter (15609): #9      Element.updateChild (package:flutter/src/widgets/framework.dart:2748:15)
E/flutter (15609): #10     RenderObjectElement.updateChildren (package:flutter/src/widgets/framework.dart:4601:32)
E/flutter (15609): #11     MultiChildRenderObjectElement.update (package:flutter/src/widgets/framework.dart:4992:17)
E/flutter (15609): #12     Element.updateChild (package:flutter/src/widgets/framework.dart:2748:15)
E/flutter (15609): #13     ComponentElement.performRebuild (package:flutter/src/widgets/framework.dart:3747:16)
E/flutter (15609): #14     Element.rebuild (package:flutter/src/widgets/framework.dart:3559:5)
E/flutter (15609): #15     ProxyElement.update (package:flutter/src/widgets/framework.dart:4006:5)
E/flutter (15609): #16     Element.updateChild (package:flutter/src/widgets/framework.dart:2748:15)
E/flutter (15609): #17     ComponentElement.performRebuild (package:flutter/src/widgets/framework.dart:3747:16)
E/flutter (15609): #18     Element.rebuild (package:flutter/src/widgets/framework.dart:3559:5)
E/flutter (15609): #19     ProxyElement.update (package:flutter/src/widgets/framework.dart:4006:5)
E/flutter (15609): #20     Element.updateChild (package:flutter/src/widgets/framework.dart:2748:15)
E/flutter (15609): #21     RenderObjectElement.updateChildren (package:flutter/src/widgets/framework.dart:4601:32)
E/flutter (15609): #22     MultiChildRenderObjectElement.update (package:flutter/src/widgets/framework.dart:4992:17)
E/flutter (15609): #23     Element.updateChild (package:flutter/src/widgets/framework.dart:2748:15)
E/flutter (15609): #24     ComponentElement.performRebuild (package:flutter/src/widgets/framework.dart:3747:16)
E/flutter (15609): #25     Element.rebuild (package:flutter/src/widgets/framework.dart:3559:5)
E/flutter (15609): #26     StatefulElement.update (package:flutter/src/widgets/framework.dart:3894:5)
E/flutter (15609): #27     Element.updateChild (package:flutter/src/widgets/framework.dart:2748:15)
E/flutter (15609): #28     ComponentElement.performRebuild (package:flutter/src/widgets/framework.dart:3747:16)
E/flutter (15609): #29     Element.rebuild (package:flutter/src/widgets/framework.dart:3559:5)
E/flutter (15609): #30     ProxyElement.update (package:flutter/src/widgets/framework.dart:4006:5)
E/flutter (15609): #31     Element.updateChild (package:flutter/src/widgets/framework.dart:2748:15)
E/flutter (15609): #32     ComponentElement.performRebuild (package:flutter/src/widgets/framework.dart:3747:16)
E/flutter (15609): #33     Element.rebuild (package:flutter/src/widgets/framework.dart:3559:5)
E/flutter (15609): #34     StatefulElement.update (package:flutter/src/widgets/framework.dart:3894:5)
E/flutter (15609): #35     Element.updateChild (package:flutter/src/widgets/framework.dart:2748:15)
E/flutter (15609): #36     SingleChildRenderObjectElement.update (package:flutter/src/widgets/framework.dart:4883:14)
E/flutter (15609): #37     Element.updateChild (package:flutter/src/widgets/framework.dart:2748:15)
E/flutter (15609): #38     ComponentElement.performRebuild (package:flutter/src/widgets/framework.dart:3747:16)
E/flutter (15609): #39     Element.rebuild (package:flutter/src/widgets/framework.dart:3559:5)
E/flutter (15609): #40     StatelessElement.update (package:flutter/src/widgets/framework.dart:3796:5)
E/flutter (15609): #41     Element.updateChild (package:flutter/src/widgets/framework.dart:2748:15)
E/flutter (15609): #42     SingleChildRenderObjectElement.update (package:flutter/src/widgets/framework.dart:4883:14)
E/flutter (15609): #43     Element.updateChild (package:flutter/src/widgets/framework.dart:2748:15)
```
