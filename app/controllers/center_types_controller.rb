class CenterTypesController < ApplicationController
  def index
    @center_types = CenterType.includes(:fields, :translation).all
    render json: @center_types, include: [:fields, :translation]
  end

  def create
    @center_type = CenterType.new(center_type_params)

    #check overlap based on first and last
    if 
      CenterType.where("? BETWEEN first AND last", @center_type.first).any? || 
      CenterType.where("? BETWEEN first AND last", @center_type.last,).any? || 
      CenterType.where("first BETWEEN ? AND ? AND last Between ? AND ?", @center_type.first, @center_type.last, @center_type.first, @center_type.last).any?
    
      render json: {error: overlap_error}, status: :unprocessable_entity
      return
    end
    

    if @center_type.save
      render json: @center_type, status: :created
    else
      render json: @center_type.errors, status: :unprocessable_entity
    end
  end

  def update
    @center_type = CenterType.find(params[:id])
    @center_type.assign_attributes(center_type_params)

    # check overlap based on updated first and last with the exception of the current record
    if
      CenterType.where("? BETWEEN first AND last AND id != ?", @center_type.first, @center_type.id).any? ||
      CenterType.where("? BETWEEN first AND last AND id != ?", @center_type.last, @center_type.id).any? ||
      CenterType.where("first BETWEEN ? AND ? AND last Between ? AND ? AND id != ?", @center_type.first, @center_type.last, @center_type.first, @center_type.last, @center_type.id).any?
      
      render json: {error: overlap_error}, status: :unprocessable_entity
      return
    end


    if @center_type.update(center_type_params)
      render json: @center_type, status: :ok
    else
      render json: @center_type.errors, status: :unprocessable_entity
    end
  end

  def destroy
    @center_type = CenterType.find(params[:id])
    if @center_type.destroy
      render json: @center_type, status: :ok
    else
      render json: @center_type.errors, status: :unprocessable_entity
    end
  end

  private 

  def center_type_params
    params.require(:center_type).permit(
      :first, 
      :last, 
      translation_attributes: translation_params, 
      fields_attributes: [:field_type_id, translation_attributes: translation_params])
  end

  def translation_params
    params.require(:translation).permit(:english, :persian, :arabic, :spanish, :french, :turkish, :portugess, :dutch, :russian, :italian, :swedish, :hindi, :urdu, :chiness, :japaness, :korean, :thai, :malay, :indonesian)
  end

  def overlap_error
    Translation.new(
      english: 'The range overlaps with another center type',
      persian: 'بازه با نوع مرکز دیگری تداخل دارد',
      arabic: 'النطاق متداخل مع نوع مركز آخر',
      spanish: 'El rango se superpone con otro tipo de centro',
      french: 'La gamme se chevauche avec un autre type de centre',
      turkish: 'Aralık, başka bir merkez türüyle çakışıyor',
      portugess: 'A faixa se sobrepõe a outro tipo de centro',
      dutch: 'Het bereik overlapt met een ander centrumtype',
      russian: 'Диапазон перекрывается с другим типом центра',
      italian: 'L\'intervallo si sovrappone ad un altro tipo di centro',
      swedish: 'Intervallen överlappar med en annan centertyp',
      hindi: 'रेंज अन्य केंद्र प्रकार के साथ ओवरलैप करता है',
      urdu: 'رینج دوسرے کینڈر کی قسم کے ساتھ اوور لیپ کرتا ہے',
      chiness: '范围与另一种中心类型重叠',
      japaness: '範囲は別の中心タイプと重なっています',
      korean: '범위가 다른 중심 유형과 겹칩니다',
      thai: 'ช่วงซ้อนทับกับประเภทศูนย์อื่น',
      malay: 'Julat bertindih dengan jenis pusat lain',
      indonesian: 'Rentang tumpang tindih dengan jenis pusat lain'
    )
  end
end
