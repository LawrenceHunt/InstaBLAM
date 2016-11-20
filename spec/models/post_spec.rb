# describe Post do
#
#   let(:post){Post.new}
#
#   describe '#tag_names=' do
#     describe 'no tags' do
#       it 'does nothing' do
#         post.tag_names = ''
#         expect(post.tags).to be_empty
#       end
#     end
#
#     describe 'one tag' do
#      it 'adds a single tag to the post' do
#        post.tag_names = 'yolo'
#        expect(post.tags.count).to eq 1
#      end
#    end
#
#     describe '#tag_names=' do
#       describe 'one tag' do
#         it 'prepends a tag with #' do
#           post.tag_names = 'yolo'
#           tag = post.tags.last
#           expect(tag.name).to eq '#yolo'
#         end
#       end
#     end
#
#     describe 'one tag' do
#      it 'does not double up #s' do
#        post.tag_names = '#yolo'
#        tag = post.tags.last
#        expect(tag.name).to eq '#yolo'
#      end
#    end
#
#    describe 'multiple tag' do
#      it 'adds a single tag to the post' do
#        post.tag_names = 'yolo, swag'
#        expect(post.tags.count).to eq 2
#      end
#    end
#
#    describe 're-using tags' do
#      let!(:tag){ Tag.create(name: '#yolo')}
#
#      it 'reuses tags if they exist' do
#        post.tag_names = 'yolo'
#        expect(Tag.count).to eq 1
#
#        expect(tag.posts).to include post
#      end
#    end
#
#     it 'should be unique' do
#       Tag.create(name: '#yolo')
#       duplicate = Tag.new(name: '#yolo')
#       expect(duplicate).to have(1).error_on(:name)
#     end
#
#     describe 'multiple duplicate tags' do
#       it 'uses only unique tags' do
#         post.tag_names = 'yolo, swag, yolo'
#         expect(post.tags.count).to eq 2
#       end
#     end
#
#     describe 'multiple duplicate tags' do
#      it 'uses only unique tags' do
#        post.tag_names = 'yolo, swag, yolo'
#        expect(post.tags.count).to eq 2
#      end
#    end
#
#   end
# end
