<?php $__env->startComponent('mail::layout'); ?>
<?php $__env->slot('header'); ?>
        <?php $__env->startComponent('mail::header', ['url' => $details['url']]); ?>
            <?php echo e(config('app.name')); ?>

        <?php echo $__env->renderComponent(); ?>
    <?php $__env->endSlot(); ?>

 
  
    We are happy to inform you that you have been selected for the <strong><?php echo e($details['position']); ?></strong> at CIPL (Corporate Infotech Private Limited). 

Congratulations on your Selection!

To proceed with the Onboarding Process,Kindly upload the below mentioned documents:
<ul>
    <li>All Educational Documents (10th, 12th, Graduation, PG)</li>
    <li>Last 3 months salary slips</li>
    <li>Bank statement (last 6 months)</li>
    <li>Appointment letter from your current company</li>
    <li>Passport scan copy</li>
    <li>Cancelled cheque of your Bank Account</li>
    <li>PF, UAN, ESIC No (if applicable)</li>
    <li>Relieving Letter from all previous employers</li>
    <li>Scanned Passport Size Photograph</li>
    <li>PAN and Aadhar Copy (Mandatory)</li>
    <li>Certificates (if any)</li>
    <li>Updated CV</li>
</ul>

Kindly click on the link below to upload the necessary documents:
   
<?php $__env->startComponent('mail::button', ['url' => $details['url']]); ?>
Document Upload Link
<?php echo $__env->renderComponent(); ?>
   
We look forward to welcoming you to the CIPL team and are excited to have you onboard.
<br>
  <?php $__env->slot('footer'); ?>
        <?php $__env->startComponent('mail::footer'); ?>
        <?php echo e(config('app.name')); ?> 
        <?php echo $__env->renderComponent(); ?>
    <?php $__env->endSlot(); ?>
<?php echo $__env->renderComponent(); ?><?php /**PATH D:\RMS\RMSAPI\resources\views/emails/DocumentUploadMail.blade.php ENDPATH**/ ?>