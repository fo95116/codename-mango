require 'spec_helper'

describe Writer do
  let(:writer) { Writer.create(name: 'paco', provider: 'facebook', uid: "1516" ) }

  it { should validate_presence_of(:name) }
  it { should validate_presence_of(:provider) }
  it { should validate_presence_of(:uid) }



end