add_module(XRay.Game.Core.Common
  SOURCES
  raypick.cpp
  raypick.h
)

add_module(XRay.Game.Core.Common.AssociativeVector.Compare
  SOURCES
  ../xrServerEntities/associative_vector_compare_predicate.h
  ../xrServerEntities/associative_vector_compare_predicate_inline.h
)

add_module(XRay.Game.Core.Common.AssociativeVector.Vector
  SOURCES
  ../xrServerEntities/associative_vector.h
  ../xrServerEntities/associative_vector_inline.h
)

add_module(XRay.Game.Core.Common.ConsoleCommands
  SOURCES
  console_commands.cpp
  console_commands_mp.cpp
)

add_module(XRay.Game.Core.Common.DateTime
  SOURCES
  date_time.cpp
  date_time.h
)

add_module(XRay.Game.Core.Common.Debug.MakeFinal
  SOURCES
  #debug_make_final_test.cpp
  debug_make_final.hpp
)

add_module(XRay.Game.Core.Common.Debug.StaticCastChecked
  SOURCES
  #static_cast_checked_test.cpp
  static_cast_checked.hpp
)

add_module(XRay.Game.Core.Common.DLLProcessDetach
  SOURCES
  xrgame_dll_detach.cpp
)

add_module(XRay.Game.Core.Common.NETShared
  SOURCES
  ../xrServerEntities/xrMessages.h

  NET_Queue.h
  traffic_optimization.cpp
  traffic_optimization.h
)

add_module(XRay.Game.Core.Common.NETShared.SecureMessages
  SOURCES
  secure_messaging.cpp
  secure_messaging.h
)

add_module(XRay.Game.Core.Common.ObjectBroker
  SOURCES
  ../xrServerEntities/object_broker.h
  ../xrServerEntities/object_cloner.h
  ../xrServerEntities/object_comparer.h
  ../xrServerEntities/object_destroyer.h
  ../xrServerEntities/object_interfaces.h
  ../xrServerEntities/object_loader.h
  ../xrServerEntities/object_saver.h
  ../xrServerEntities/object_type_traits.h
)

add_module(XRay.Game.Core.Common.ObjectFactory
  SOURCES
  ../xrServerEntities/clsid_game.h

  ../xrServerEntities/object_factory_register.cpp
  ../xrServerEntities/object_factory_script.cpp

  ../xrServerEntities/object_factory.cpp
  ../xrServerEntities/object_factory.h
  ../xrServerEntities/object_factory_impl.h
  ../xrServerEntities/object_factory_inline.h
  ../xrServerEntities/object_factory_space.h
)

add_module(XRay.Game.Core.Common.ObjectFactory.Abstract
  SOURCES
  ../xrServerEntities/object_item_abstract.h
  ../xrServerEntities/object_item_abstract_inline.h
)

add_module(XRay.Game.Core.Common.ObjectFactory.ClientServer
  SOURCES
  ../xrServerEntities/object_item_client_server.h
  ../xrServerEntities/object_item_client_server_inline.h
)

add_module(XRay.Game.Core.Common.ObjectFactory.Script
  SOURCES
  ../xrServerEntities/object_item_script.cpp
  ../xrServerEntities/object_item_script.h
)

add_module(XRay.Game.Core.Common.ObjectFactory.Single
  SOURCES
  ../xrServerEntities/object_item_single.h
  ../xrServerEntities/object_item_single_inline.h
)

add_module(XRay.Game.Core.Common.QuadTree
  SOURCES
  quadtree.h
  quadtree_inline.h
)

add_module(XRay.Game.Core.Common.Random.32Bit
  SOURCES
  random32.cpp
  random32.h
)

add_module(XRay.Game.Core.Common.Random.Weighted
  SOURCES
  ai/weighted_random.cpp
  ai/weighted_random.h
)

add_module(XRay.Game.Core.Common.Registry
  SOURCES
  RegistryFuncs.cpp
  RegistryFuncs.h
)

add_module(XRay.Game.Core.Common.Shared
  SOURCES
  ../xrServerEntities/shared_data.h
  new_sds.h
  NewZoomFlag.h
)

add_module(XRay.Game.Core.Common.SmartCast
  SOURCES
  ../xrServerEntities/smart_cast.cpp
  ../xrServerEntities/smart_cast.h
  ../xrServerEntities/smart_cast_impl0.h
  ../xrServerEntities/smart_cast_impl1.h
  ../xrServerEntities/smart_cast_impl2.h

  ../xrServerEntities/smart_cast_stats.cpp
)

add_module(XRay.Game.Core.Common.StringTable
  SOURCES
  string_table.cpp
  string_table.h
  string_table_defs.h
)
