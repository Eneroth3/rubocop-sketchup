# frozen_string_literal: true

# How to update this file:
#
# FEATURES constant:
#
# 1. Run the `rubocop-changelog` YARD template:
#    (https://github.com/SketchUp/rubocop-sketchup/issues/4#issuecomment-370753043)
#
#    yardoc -c -t rubocop-changelog -f text > rubocop-changelog.txt
#
# 2. Prune out any unreleased versions.
#
# TODO(thomthom): Push the rubocop-changelog template to the API stubs
#                 repository.
#
#
# INSTANCE_METHODS constant:
#
# Manually curated list of method names which are believed to yield few false
# positives. The method names should be names that are not commonly used in
# general context.
#
# When a new version is released and FEATURES is updated the new methods from
# the new version should be considered for this list.
#
#
# OBSERVER_METHODS constant:
#
# Currently manually curated.
#
# TODO(thomthom): Tag observer methods in YARD for automatic extraction.

module RuboCop
  module SketchUp
    module Features

      FEATURES = [

        {
          version: 'LayOut 2018',
          types: {
            class: [
              'Geom::Bounds2d',
              'Geom::OrientedBounds2d',
              'Geom::Point2d',
              'Geom::Transformation2d',
              'Geom::Vector2d',
              'Layout::AngularDimension',
              'Layout::AutoTextDefinition',
              'Layout::AutoTextDefinitions',
              'Layout::ConnectionPoint',
              'Layout::Document',
              'Layout::Ellipse',
              'Layout::Entities',
              'Layout::Entity',
              'Layout::FormattedText',
              'Layout::Grid',
              'Layout::Group',
              'Layout::Image',
              'Layout::Label',
              'Layout::Layer',
              'Layout::LayerInstance',
              'Layout::Layers',
              'Layout::LinearDimension',
              'Layout::LockedEntityError',
              'Layout::LockedLayerError',
              'Layout::Page',
              'Layout::PageInfo',
              'Layout::Pages',
              'Layout::Path',
              'Layout::Rectangle',
              'Layout::SketchUpModel',
              'Layout::Style',
              'Layout::Table',
              'Layout::TableCell',
              'Layout::TableColumn',
              'Layout::TableRow',
            ],
            method: [
              'Geom::Bounds2d#==',
              'Geom::Bounds2d#height',
              'Geom::Bounds2d#initialize',
              'Geom::Bounds2d#lower_right',
              'Geom::Bounds2d#set!',
              'Geom::Bounds2d#to_a',
              'Geom::Bounds2d#upper_left',
              'Geom::Bounds2d#width',
              'Geom::OrientedBounds2d#==',
              'Geom::OrientedBounds2d#lower_left',
              'Geom::OrientedBounds2d#lower_right',
              'Geom::OrientedBounds2d#to_a',
              'Geom::OrientedBounds2d#upper_left',
              'Geom::OrientedBounds2d#upper_right',
              'Geom::Point2d#+',
              'Geom::Point2d#-',
              'Geom::Point2d#==',
              'Geom::Point2d#[]',
              'Geom::Point2d#[]=',
              'Geom::Point2d#clone',
              'Geom::Point2d#distance',
              'Geom::Point2d#initialize',
              'Geom::Point2d#inspect',
              'Geom::Point2d#offset',
              'Geom::Point2d#offset!',
              'Geom::Point2d#set!',
              'Geom::Point2d#to_a',
              'Geom::Point2d#to_s',
              'Geom::Point2d#vector_to',
              'Geom::Point2d#x',
              'Geom::Point2d#x=',
              'Geom::Point2d#y',
              'Geom::Point2d#y=',
              'Geom::Transformation2d#==',
              'Geom::Transformation2d#clone',
              'Geom::Transformation2d#identity?',
              'Geom::Transformation2d#initialize',
              'Geom::Transformation2d#set!',
              'Geom::Transformation2d#to_a',
              'Geom::Vector2d#%',
              'Geom::Vector2d#*',
              'Geom::Vector2d#+',
              'Geom::Vector2d#-',
              'Geom::Vector2d#==',
              'Geom::Vector2d#[]',
              'Geom::Vector2d#[]=',
              'Geom::Vector2d#angle_between',
              'Geom::Vector2d#clone',
              'Geom::Vector2d#cross',
              'Geom::Vector2d#dot',
              'Geom::Vector2d#initialize',
              'Geom::Vector2d#inspect',
              'Geom::Vector2d#length',
              'Geom::Vector2d#length=',
              'Geom::Vector2d#normalize',
              'Geom::Vector2d#normalize!',
              'Geom::Vector2d#parallel?',
              'Geom::Vector2d#perpendicular?',
              'Geom::Vector2d#reverse',
              'Geom::Vector2d#reverse!',
              'Geom::Vector2d#same_direction?',
              'Geom::Vector2d#set!',
              'Geom::Vector2d#to_a',
              'Geom::Vector2d#to_s',
              'Geom::Vector2d#unit_vector?',
              'Geom::Vector2d#valid?',
              'Geom::Vector2d#x',
              'Geom::Vector2d#x=',
              'Geom::Vector2d#y',
              'Geom::Vector2d#y=',
            ],
            module: [
              'Layout',
            ],
          },
        },

        {
          version: 'SketchUp 2018',
          types: {
            class: [
              'Sketchup::ImageRep',
            ],
            constant: [
              'Geom::PolygonMesh::MESH_NORMALS',
              'Geom::PolygonMesh::MESH_POINTS',
              'Geom::PolygonMesh::MESH_UVQ_BACK',
              'Geom::PolygonMesh::MESH_UVQ_FRONT',
            ],
            method: [
              'Sketchup.send_to_layout',
              'Sketchup::Color#==',
              'Sketchup::DefinitionList#remove',
              'Sketchup::Image#image_rep',
              'Sketchup::Materials#unique_name',
              'Sketchup::Page#include_in_animation=',
              'Sketchup::Page#include_in_animation?',
              'Sketchup::SectionPlane#name',
              'Sketchup::SectionPlane#name=',
              'Sketchup::SectionPlane#symbol',
              'Sketchup::SectionPlane#symbol=',
              'Sketchup::Texture#image_rep',
              'UI.refresh_toolbars',
            ],
          },
        },

        {
          version: 'SketchUp 2017',
          types: {
            class: [
              'Sketchup::Http::Request',
              'Sketchup::Http::Response',
              'Sketchup::InstancePath',
              'UI::HtmlDialog',
              'UI::Notification',
            ],
            constant: [
              'UI::HtmlDialog::STYLE_WINDOW',
            ],
            method: [
              'Sketchup::Entity#persistent_id',
              'Sketchup::Http::Request#body',
              'Sketchup::Http::Request#body=',
              'Sketchup::Http::Request#cancel',
              'Sketchup::Http::Request#headers',
              'Sketchup::Http::Request#headers=',
              'Sketchup::Http::Request#initialize',
              'Sketchup::Http::Request#method',
              'Sketchup::Http::Request#method=',
              'Sketchup::Http::Request#set_download_progress_callback',
              'Sketchup::Http::Request#set_upload_progress_callback',
              'Sketchup::Http::Request#start',
              'Sketchup::Http::Request#status',
              'Sketchup::Http::Request#url',
              'Sketchup::Http::Response#body',
              'Sketchup::Http::Response#headers',
              'Sketchup::Http::Response#status_code',
              'Sketchup::InputPoint#instance_path',
              'Sketchup::InstancePath#==',
              'Sketchup::InstancePath#[]',
              'Sketchup::InstancePath#each',
              'Sketchup::InstancePath#empty?',
              'Sketchup::InstancePath#include?',
              'Sketchup::InstancePath#initialize',
              'Sketchup::InstancePath#leaf',
              'Sketchup::InstancePath#length',
              'Sketchup::InstancePath#persistent_id_path',
              'Sketchup::InstancePath#root',
              'Sketchup::InstancePath#size',
              'Sketchup::InstancePath#to_a',
              'Sketchup::InstancePath#transformation',
              'Sketchup::InstancePath#valid?',
              'Sketchup::Material#save_as',
              'Sketchup::Materials#load',
              'Sketchup::Model#find_entity_by_persistent_id',
              'Sketchup::Model#instance_path_from_pid_path',
              'Sketchup::ModelObserver#onPidChanged',
              'UI.scale_factor',
              'UI.show_extension_manager',
              'UI::HtmlDialog#add_action_callback',
              'UI::HtmlDialog#bring_to_front',
              'UI::HtmlDialog#center',
              'UI::HtmlDialog#close',
              'UI::HtmlDialog#execute_script',
              'UI::HtmlDialog#initialize',
              'UI::HtmlDialog#set_can_close',
              'UI::HtmlDialog#set_file',
              'UI::HtmlDialog#set_html',
              'UI::HtmlDialog#set_on_closed',
              'UI::HtmlDialog#set_position',
              'UI::HtmlDialog#set_size',
              'UI::HtmlDialog#set_url',
              'UI::HtmlDialog#show',
              'UI::HtmlDialog#show_modal',
              'UI::HtmlDialog#visible?',
              'UI::Notification#icon_name',
              'UI::Notification#icon_name=',
              'UI::Notification#icon_tooltip',
              'UI::Notification#icon_tooltip=',
              'UI::Notification#initialize',
              'UI::Notification#message',
              'UI::Notification#message=',
              'UI::Notification#on_accept',
              'UI::Notification#on_accept_title',
              'UI::Notification#on_dismiss',
              'UI::Notification#on_dismiss_title',
              'UI::Notification#show',
            ],
            module: [
              'Sketchup::Http',
            ],
          },
        },

        {
          version: 'SketchUp 2016 M1',
          types: {
            method: [
              'Sketchup::RegionalSettings.decimal_separator',
              'Sketchup::RegionalSettings.list_separator',
            ],
            module: [
              'Sketchup::RegionalSettings',
            ],
          },
        },

        {
          version: 'SketchUp 2016',
          types: {
            class: [
              'Sketchup::Axes',
            ],
            method: [
              'Sketchup.debug_mode=',
              'Sketchup.debug_mode?',
              'Sketchup::Axes#axes',
              'Sketchup::Axes#origin',
              'Sketchup::Axes#set',
              'Sketchup::Axes#sketch_plane',
              'Sketchup::Axes#to_a',
              'Sketchup::Axes#transformation',
              'Sketchup::Axes#xaxis',
              'Sketchup::Axes#yaxis',
              'Sketchup::Axes#zaxis',
              'Sketchup::ComponentDefinition#count_used_instances',
              'Sketchup::Model#axes',
              'Sketchup::Page#axes',
              'Sketchup::PickHelper#boundingbox_pick',
              'Sketchup::PickHelper#window_pick',
              'Sketchup::Texture#write',
            ],
          },
        },

        {
          version: 'SketchUp 2015',
          types: {
            class: [
              'Sketchup::ClassificationSchema',
              'Sketchup::Classifications',
              'Sketchup::Licensing::ExtensionLicense',
            ],
            method: [
              'Sketchup.is_64bit?',
              'Sketchup::AppObserver#onActivateModel',
              'Sketchup::Camera#center_2d',
              'Sketchup::Camera#fov_is_height?',
              'Sketchup::Camera#is_2d?',
              'Sketchup::Camera#scale_2d',
              'Sketchup::ClassificationSchema#<=>',
              'Sketchup::ClassificationSchema#name',
              'Sketchup::ClassificationSchema#namespace',
              'Sketchup::Classifications#[]',
              'Sketchup::Classifications#each',
              'Sketchup::Classifications#keys',
              'Sketchup::Classifications#length',
              'Sketchup::Classifications#load_schema',
              'Sketchup::Classifications#size',
              'Sketchup::Classifications#unload_schema',
              'Sketchup::ComponentDefinition#add_classification',
              'Sketchup::ComponentDefinition#get_classification_value',
              'Sketchup::ComponentDefinition#remove_classification',
              'Sketchup::ComponentDefinition#set_classification_value',
              'Sketchup::Group#definition',
              'Sketchup::Layers#remove',
              'Sketchup::Licensing.get_extension_license',
              'Sketchup::Licensing::ExtensionLicense#days_remaining',
              'Sketchup::Licensing::ExtensionLicense#error_description',
              'Sketchup::Licensing::ExtensionLicense#licensed?',
              'Sketchup::Licensing::ExtensionLicense#state',
              'Sketchup::Material#colorize_deltas',
              'Sketchup::Material#colorize_type',
              'Sketchup::Material#colorize_type=',
              'Sketchup::Model#classifications',
              'Sketchup::Model#close',
              'Sketchup::Model#find_entity_by_id',
              'UI.select_directory',
            ],
            module: [
              'Sketchup::Licensing',
            ],
          },
        },

        {
          version: 'SketchUp 2014',
          types: {
            class: [
              'LanguageHandler',
              'Sketchup::Console',
              'Sketchup::Dimension',
              'Sketchup::DimensionLinear',
              'Sketchup::DimensionObserver',
              'Sketchup::DimensionRadial',
            ],
            constant: [
              'Geom::PolygonMesh::AUTO_SOFTEN',
              'Geom::PolygonMesh::HIDE_BASED_ON_INDEX',
              'Geom::PolygonMesh::NO_SMOOTH_OR_HIDE',
              'Geom::PolygonMesh::SMOOTH_SOFT_EDGES',
              'Geom::PolygonMesh::SOFTEN_BASED_ON_INDEX',
            ],
            method: [
              'Geom::PolygonMesh#set_uv',
              'LanguageHandler#[]',
              'LanguageHandler#initialize',
              'LanguageHandler#resource_path',
              'LanguageHandler#strings',
              'Sketchup.platform',
              'Sketchup.quit',
              'Sketchup.temp_dir',
              'Sketchup::AppObserver#expectsStartupModelNotifications',
              'Sketchup::AttributeDictionaries#count',
              'Sketchup::AttributeDictionaries#length',
              'Sketchup::AttributeDictionaries#size',
              'Sketchup::AttributeDictionary#count',
              'Sketchup::ComponentInstance#guid',
              'Sketchup::Console#clear',
              'Sketchup::Console#hide',
              'Sketchup::Console#show',
              'Sketchup::Console#visible?',
              'Sketchup::DefinitionList#size',
              'Sketchup::Dimension#add_observer',
              'Sketchup::Dimension#arrow_type',
              'Sketchup::Dimension#arrow_type=',
              'Sketchup::Dimension#has_aligned_text=',
              'Sketchup::Dimension#has_aligned_text?',
              'Sketchup::Dimension#plane',
              'Sketchup::Dimension#remove_observer',
              'Sketchup::Dimension#text',
              'Sketchup::Dimension#text=',
              'Sketchup::DimensionLinear#aligned_text_position',
              'Sketchup::DimensionLinear#aligned_text_position=',
              'Sketchup::DimensionLinear#end',
              'Sketchup::DimensionLinear#end=',
              'Sketchup::DimensionLinear#offset_vector',
              'Sketchup::DimensionLinear#offset_vector=',
              'Sketchup::DimensionLinear#start',
              'Sketchup::DimensionLinear#start=',
              'Sketchup::DimensionLinear#text_position',
              'Sketchup::DimensionLinear#text_position=',
              'Sketchup::DimensionObserver#onTextChanged',
              'Sketchup::DimensionRadial#arc_curve',
              'Sketchup::DimensionRadial#arc_curve=',
              'Sketchup::DimensionRadial#leader_break_point',
              'Sketchup::DimensionRadial#leader_break_point=',
              'Sketchup::DimensionRadial#leader_points',
              'Sketchup::Entities#active_section_plane',
              'Sketchup::Entities#active_section_plane=',
              'Sketchup::Entities#add_dimension_linear',
              'Sketchup::Entities#add_dimension_radial',
              'Sketchup::Entities#add_section_plane',
              'Sketchup::Entities#size',
              'Sketchup::EntitiesObserver#onActiveSectionPlaneChanged',
              'Sketchup::Face#get_texture_projection',
              'Sketchup::Face#set_texture_projection',
              'Sketchup::Group#guid',
              'Sketchup::Image#transformation',
              'Sketchup::Image#transformation=',
              'Sketchup::Layer#color',
              'Sketchup::Layer#color=',
              'Sketchup::Layers#size',
              'Sketchup::LayersObserver#onLayerChanged',
              'Sketchup::Materials#size',
              'Sketchup::Model#save_copy',
              'Sketchup::OptionsManager#length',
              'Sketchup::OptionsProvider#length',
              'Sketchup::Pages#length',
              'Sketchup::RenderingOptions#count',
              'Sketchup::RenderingOptions#length',
              'Sketchup::RenderingOptions#size',
              'Sketchup::SectionPlane#activate',
              'Sketchup::SectionPlane#active?',
              'Sketchup::Selection#size',
              'Sketchup::ShadowInfo#count',
              'Sketchup::ShadowInfo#length',
              'Sketchup::ShadowInfo#size',
              'Sketchup::Styles#length',
              'UI::Toolbar#count',
              'UI::Toolbar#length',
              'UI::Toolbar#size',
              'UI::WebDialog#screen_scale_factor',
            ],
          },
        },

        {
          version: 'SketchUp 2013',
          types: {
            method: [
              'SketchupExtension#extension_path',
              'SketchupExtension#id',
              'SketchupExtension#version_id',
            ],
          },
        },

        {
          version: 'SketchUp 8.0 M2',
          types: {
            class: [
              'Sketchup::ExtensionsManager',
            ],
            method: [
              'Sketchup.extensions',
              'Sketchup.install_from_archive',
              'Sketchup.plugins_disabled=',
              'Sketchup.plugins_disabled?',
              'Sketchup::ExtensionsManager#[]',
              'Sketchup::ExtensionsManager#count',
              'Sketchup::ExtensionsManager#each',
              'Sketchup::ExtensionsManager#keys',
              'Sketchup::ExtensionsManager#length',
              'Sketchup::ExtensionsManager#size',
              'SketchupExtension#check',
              'SketchupExtension#load_on_start?',
              'SketchupExtension#loaded?',
              'SketchupExtension#registered?',
              'SketchupExtension#uncheck',
            ],
          },
        },

        {
          version: 'SketchUp 8.0 M1',
          types: {
            method: [
              'Sketchup.fix_shadow_strings=',
              'Sketchup.fix_shadow_strings?',
              'Sketchup::Color#alpha=',
              'Sketchup::Material#name=',
              'Sketchup::Material#write_thumbnail',
              'Sketchup::Materials#remove',
              'UI::Command#large_icon',
              'UI::Command#menu_text',
              'UI::Command#small_icon',
              'UI::Command#status_bar_text',
              'UI::Command#tooltip',
              'UI::Toolbar#each',
              'UI::Toolbar#name',
            ],
          },
        },

        {
          version: 'SketchUp 8.0',
          types: {
            method: [
              'Sketchup::ComponentInstance#equals?',
              'Sketchup::ComponentInstance#intersect',
              'Sketchup::ComponentInstance#manifold?',
              'Sketchup::ComponentInstance#outer_shell',
              'Sketchup::ComponentInstance#show_differences',
              'Sketchup::ComponentInstance#split',
              'Sketchup::ComponentInstance#subtract',
              'Sketchup::ComponentInstance#trim',
              'Sketchup::ComponentInstance#union',
              'Sketchup::ComponentInstance#volume',
              'Sketchup::EntitiesObserver#onElementModified',
              'Sketchup::Group#equals?',
              'Sketchup::Group#intersect',
              'Sketchup::Group#manifold?',
              'Sketchup::Group#outer_shell',
              'Sketchup::Group#show_differences',
              'Sketchup::Group#split',
              'Sketchup::Group#subtract',
              'Sketchup::Group#trim',
              'Sketchup::Group#union',
              'Sketchup::Group#volume',
              'Sketchup::ModelObserver#onPostSaveModel',
              'Sketchup::ModelObserver#onPreSaveModel',
            ],
          },
        },

        {
          version: 'SketchUp 7.1 M1',
          types: {
            method: [
              'Sketchup::Curve#is_polygon?',
            ],
          },
        },

        {
          version: 'SketchUp 7.1',
          types: {
            method: [
              'Sketchup::Model#georeferenced?',
              'Sketchup::Model#number_faces',
              'Sketchup::View#refresh',
              'UI::WebDialog#write_image',
            ],
          },
        },

        {
          version: 'SketchUp 7.0 M1',
          types: {
            method: [
              'Sketchup::Face#get_glued_instances',
            ],
          },
        },

        {
          version: 'SketchUp 7.0',
          types: {
            method: [
              'Sketchup.break_edges=',
              'Sketchup.break_edges?',
              'Sketchup.is_pro?',
              'Sketchup::AppObserver#onUnloadExtension',
              'Sketchup::Behavior#no_scale_mask=',
              'Sketchup::Behavior#no_scale_mask?',
              'Sketchup::ComponentDefinition#refresh_thumbnail',
              'Sketchup::ComponentDefinition#save_as',
              'Sketchup::ComponentDefinition#save_thumbnail',
              'Sketchup::DefinitionList#load_from_url',
              'Sketchup::Group#local_bounds',
              'Sketchup::Model#active_path',
              'Sketchup::Model#edit_transform',
              'Sketchup::Model#mipmapping=',
              'Sketchup::Model#mipmapping?',
              'Sketchup::ModelObserver#onAfterComponentSaveAs',
              'Sketchup::ModelObserver#onBeforeComponentSaveAs',
              'Sketchup::ModelObserver#onExplode',
              'Sketchup::ModelObserver#onPlaceComponent',
              'Sketchup::Pages#add_matchphoto_page',
              'UI.refresh_inspectors',
              'UI::WebDialog#max_height',
              'UI::WebDialog#max_height=',
              'UI::WebDialog#max_width',
              'UI::WebDialog#max_width=',
              'UI::WebDialog#min_height',
              'UI::WebDialog#min_height=',
              'UI::WebDialog#min_width',
              'UI::WebDialog#min_width=',
              'UI::WebDialog#navigation_buttons_enabled=',
              'UI::WebDialog#navigation_buttons_enabled?',
              'UI::WebDialog#set_full_security',
            ],
          },
        },
      ].freeze

      INSTANCE_METHODS = %i[
        active_path
        active_section_plane
        active_section_plane=
        add_action_callback
        add_classification
        add_dimension_linear
        add_dimension_radial
        add_matchphoto_page
        add_section_plane
        aligned_text_position
        aligned_text_position=
        arc_curve
        arc_curve=
        boundingbox_pick
        bring_to_front
        center_2d
        classifications
        colorize_deltas
        colorize_type
        colorize_type=
        count_used_instances
        days_remaining
        edit_transform
        error_description
        execute_script
        expectsStartupModelNotifications
        extension_path
        find_entity_by_id
        find_entity_by_persistent_id
        fov_is_height?
        georeferenced?
        get_classification_value
        get_glued_instances
        get_texture_projection
        has_aligned_text?
        has_aligned_text=
        icon_name
        icon_name=
        icon_tooltip
        icon_tooltip=
        image_rep
        include_in_animation?
        include_in_animation=
        instance_path
        instance_path_from_pid_path
        is_polygon?
        large_icon
        leader_break_point
        leader_break_point=
        leader_points
        load_from_url
        load_on_start?
        load_schema
        local_bounds
        lower_left
        lower_right
        menu_text
        mipmapping?
        mipmapping=
        navigation_buttons_enabled?
        navigation_buttons_enabled=
        no_scale_mask?
        no_scale_mask=
        number_faces
        offset_vector
        offset_vector=
        outer_shell
        persistent_id
        persistent_id_path
        refresh_thumbnail
        remove_classification
        same_direction?
        save_thumbnail
        scale_2d
        screen_scale_factor
        set_can_close
        set_classification_value
        set_download_progress_callback
        set_file
        set_full_security
        set_html
        set_on_closed
        set_position
        set_size
        set_texture_projection
        set_upload_progress_callback
        set_url
        set_uv
        show_differences
        sketch_plane
        small_icon
        status_bar_text
        unit_vector?
        unload_schema
        upper_left
        upper_right
        window_pick
      ].freeze

      OBSERVER_METHODS = %i[
        onActivateModel
        onActiveSectionPlaneChanged
        onAfterComponentSaveAs
        onBeforeComponentSaveAs
        onElementModified
        onExplode
        onLayerChanged
        onPidChanged
        onPlaceComponent
        onPostSaveModel
        onPreSaveModel
        onTextChanged
        onUnloadExtension
      ].freeze

    end
  end
end
