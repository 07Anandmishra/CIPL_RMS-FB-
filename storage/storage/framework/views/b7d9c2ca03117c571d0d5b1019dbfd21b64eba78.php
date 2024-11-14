<!DOCTYPE html>
<html>
<head>
    <title>Offer Letter Response</title>
    <style>
         body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f4f4f4;
            color: #333;
        }

        .container {
            max-width: 600px;
            margin: 20px auto;
            padding: 20px;
            background-color: #fff;
            border-radius: 5px;
            box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
        }

        .disclaimer {
            font-size: 10px;
            color: grey;
            margin-top: 20px;
        }
    </style>
</head>
<body>
    <div  class="container">
    <p>Dear <?php echo e($projectLeader); ?>,</p>

    <p>The candidate <?php echo e($candidate->Name); ?> has <?php echo e($status); ?> the offer for the position of <?php echo e($candidate->JobTitle); ?>.</p>

    <?php if($status == 'accepted'): ?>
        <p>They will join us on <?php echo e($joiningDate); ?>. We are excited to have them on board.</p>
    <?php else: ?>
        <p>We will proceed with the next steps to fill this position.</p>
    <?php endif; ?>

    <p>Best Regards,</p>
    <div class="disclaimer">
        <p  class="disclaimer">Disclaimer:</p>
        <p class="disclaimer" >This email and any attachments are intended solely for the use of the individual or entity to whom they are addressed. This communication may contain confidential and/or privileged information. If you are not the intended recipient, please notify the sender immediately and delete this email from your system. Any unauthorized use, dissemination, copying, or disclosure of this email and its contents is strictly prohibited.</p>
        <p class="disclaimer">For any concerns, please reach out to us at ta@cipl.org.in.</p>
    </div>
</div>
</body>
</html>
<?php /**PATH D:\RMS\RMSAPI\resources\views/emails/offer_letter_response.blade.php ENDPATH**/ ?>