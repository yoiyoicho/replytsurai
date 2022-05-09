module ApplicationHelper
  def default_meta_tags
    {
      site: 'リプ返つらい',
      title: 'リプ返つらい｜Twitterリプライ自動生成サービス',
      reverse: true,
      separator: '|',
      description: 'Twitterのリプ返が面倒くさい人のために、AIがリプ返を自動で生成します。自分宛のリプライもOK。',
      keywords: 'Twitter リプ返 自動返信',
      canonical: request.original_url,
      noindex: ! Rails.env.production?,
      # icon: [
      #   { href: image_url('favicon.ico') },
      #   { href: image_url('icon.jpg'), rel: 'apple-touch-icon', sizes: '180x180', type: 'image/jpg' },
      # ],
      og: {
        site_name: 'リプ返つらい',
        title: 'リプ返つらい｜Twitterリプライ自動生成サービス',
        description: 'Twitterのリプ返が面倒くさい人のために、AIがリプ返を自動で生成します。自分宛のリプライもOK。', 
        type: 'website',
        url: request.original_url,
        image: image_url('replytsurai-logo-ogp.jpg'),
        locale: 'ja_JP',
      },
      twitter: {
        card: 'summary_large_image',
        site: '@yoiyoicho',
      }
      # fb: {
      #   app_id: '¥facebookのID'
      # }
    }
  end
end
