# frozen_string_literal: true

require 'spec_helper'

describe RuboCop::Cop::SketchupRequirements::SketchupExtension do

  subject(:cop) { described_class.new }

  it 'registers an offense for missing SketchupExtension in root file' do
    inspect_source('foo(123)', './src/hello.rb')
    expect(cop.offenses.size).to eq(1)
  end

  it 'does not register an offense for missing SketchupExtension in support file' do
    inspect_source('foo(123)', './src/hello/world.rb')
    expect(cop.offenses).to be_empty
  end

  it 'does not register an offense for SketchupExtension in root file' do
    inspect_source(['extension = SketchupExtension.new("Extension Name", filename)',
                    'Sketchup.register_extension(extension, true)'],
                    './src/hello.rb')
    expect(cop.offenses).to be_empty
  end

  it 'does not register an offense for namespaced SketchupExtension in root file assigned to local variable' do
    inspect_source(['module Example',
                    '  extension = SketchupExtension.new("Extension Name", filename)',
                    '  extension.description = "Hello World"',
                    '  Sketchup.register_extension(extension, true)',
                    'end'],
                    './src/hello.rb')
    expect(cop.offenses).to be_empty
  end

  it 'does not register an offense for namespaced SketchupExtension in root file assigned to instance variable' do
    inspect_source(['module Example',
                    '  @extension = SketchupExtension.new("Extension Name", filename)',
                    '  @extension.description = "Hello World"',
                    '  Sketchup.register_extension(@extension, true)',
                    'end'],
                    './src/hello.rb')
    expect(cop.offenses).to be_empty
  end

  it 'does not register an offense for namespaced SketchupExtension in root file assigned to class variable' do
    inspect_source(['module Example',
                    '  @@extension = SketchupExtension.new("Extension Name", filename)',
                    '  @@extension.description = "Hello World"',
                    '  Sketchup.register_extension(@@extension, true)',
                    'end'],
                    './src/hello.rb')
    expect(cop.offenses).to be_empty
  end

  it 'does not register an offense for namespaced SketchupExtension in root file assigned to global variable' do
    inspect_source(['module Example',
                    '  $extension = SketchupExtension.new("Extension Name", filename)',
                    '  $extension.description = "Hello World"',
                    '  Sketchup.register_extension($extension, true)',
                    'end'],
                    './src/hello.rb')
    expect(cop.offenses).to be_empty
  end

  it 'does not register an offense for namespaced SketchupExtension in root file assigned to constant' do
    inspect_source(['module Example',
                    '  EXTENSION = SketchupExtension.new("Extension Name", filename)',
                    '  EXTENSION.description = "Hello World"',
                    '  Sketchup.register_extension(EXTENSION, true)',
                    'end'],
                    './src/hello.rb')
    expect(cop.offenses).to be_empty
  end

end
